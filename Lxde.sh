rm -rf ngrok  ngrok.zip  ng.sh > /dev/null 2>&1
wget -O ng.sh https://bit.ly/ngrok3389 > /dev/null 2>&1
chmod +x ng.sh
./ng.sh
clear
echo "======================="
echo PILIH SERVER NEGARA MU
echo "======================="
echo "us - United States (Ohio)"
echo "eu - Europe (Frankfurt)"
echo "ap - Asia/Pacific (Singapore)"
echo "au - Australia (Sydney)"
echo "sa - South America (Sao Paulo)"
echo "jp - Japan (Tokyo)"
echo "in - India (Mumbai)"
read -p "choose ngrok region: " CRP
./ngrok tcp --region $CRP 3389 &>/dev/null &
clear
echo "================================"
echo "PROSES INSTALASI TUNGGU 3-4 minutes"
echo "JANGAN LUPA PASANG SCREEN 👉BIARAMAN👈"
echo "================================"
sudo apt-get install lxde -y
clear
echo "===================================="
echo "Install Firefox"
echo "===================================="
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A6DCF7707EBC211F
sudo apt-add-repository "deb http://ppa.launchpad.net/ubuntu-mozilla-security/ppa/ubuntu bionic main"
echo "===================================="
echo "Install Google Chrome"
echo "===================================="
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
echo "===================================="
echo "Update"
echo "===================================="
sudo apt-get update > /dev/null 2>&1
echo "===================================="
echo "Installing"
echo "===================================="
sudo apt-get install firefox -y > /dev/null 2>&1
sudo apt-get install google-chrome-stable -y > /dev/null 2>&1 
echo "Installing peer2profit.app"
echo "===================================="
wget https://github.com/tolecilik/2p/blob/main/peer2profit_0.48_amd64.deb > /dev/null 2>&1
sudo apt-get install peer2profit_0.48_amd64.deb -y > /dev/null 2>&1 
echo "===================================="
echo "Install xrdp"
echo "===================================="
sudo apt install -y xrdp > /dev/null 2>&1
sudo sed -i.bak '/fi/a lxde-session \n' /etc/xrdp/startwm.sh > /dev/null 2>&1
sudo service xrdp start > /dev/null 2>&1
clear
echo "=======================100%"
echo "===================================="
echo "Username : root"
echo "Username : that you made yourself"
echo "RDP Address:"
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "Don't close this tab to keep RDP running"
echo "👉Keep support akuh.net thank you👈"
echo "===================================="
sleep 9876543210
