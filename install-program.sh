#!/bin/bash

GREEN='\033[0;32m'

## Removendo travas eventuais do apt ##

sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

echo "${GREEN} removeu travas"

## Atualizando o repositório ##

sudo apt update && 

echo "${GREEN} atualizou repositórios"

## Instalando pacotes e programas do repositório deb do Ubuntu ##

sudo apt install git -y &&

echo "${GREEN} instalou git"

sudo apt install php5-common libapache2-mod-php5 php5-cli -y &&

echo "${GREEN} instalou php"

## Instalando pacotes Snap ##

sudo apt install snap

sudo snap install code --classic &&

echo "${GREEN} instalou vscode"

## Instalando teams ##

mkdir /home/$USER/Download/programas

cd /home/$USER/Download/programas

## Baixando o teams ##
wget -c https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/teams_1.4.00.13653_amd64.deb

## Instalando os programas baixados ##

sudo dpkg -i *.deb &&

## Atualização do sistema ##

sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&

echo "${GREEN} atualizou o sistema"

#Fim do Script ##

echo "Finalizado"
