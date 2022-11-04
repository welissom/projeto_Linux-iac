#!/bin/bash

echo "Criar Diretórios"

mkdir /Publico
mkdir /Adm
mkdir /Ven
mkdir /sec

echo "Criar Grupos de Usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criar Usuários"

useradd carlos -m -c "Carlos Alberto" -s /bin/bash -p $(openssl passwd User123) -G GRP_ADM
useradd maria -m -c "Maria Cicera" -s /bin/bash -p $(openssl passwd User123) -G GRP_ADM
useradd joao -m -c "Joao Paulo" -s /bin/bash -p $(openssl passwd User123) -G GRP_ADM


useradd debora -m -c "Debora Carla" -s /bin/bash -p $(openssl passwd User123) -G GRP_VEN
useradd sebastiao -m -c "Sebastiao Raimundo" -s /bin/bash -p $(openssl passwd User123) -G GRP_VEN
useradd roberto -m -c "Roberto Carlos" -s /bin/bash -p $(openssl passwd User123) -G GRP_VEN

useradd josefina -m -c "Josefina Freia" -s /bin/bash -p $(openssl passwd User123) -G GRP_SEC
useradd amanda -m -c "Amanda Pera" -s /bin/bash -p $(openssl passwd User123) -G GRP_SEC
useradd Rogerio -m -c "Rogerio Pinto" -s /bin/bash -p $(openssl passwd User123) -G GRP_SEC

echo "Especificando Permissões dos Diretórios"

chown root:GRP_ADM /Adm
chown root:GRP_VEN /Ven
chown root:GRP_SEC /Sec

chmod 770 /Adm
chmod 770 /Ven
chmod 770 /Sec
chmod 777 /Publico

echo "Fim...."
