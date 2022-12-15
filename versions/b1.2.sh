echo "
  _       _         _                    ___                                                   _                  
 ( )  _  ( ) _     ( )                  (  _ \                                  / \_/ \       ( )                 
 | | ( ) | |(_)   _| |   _    _   _   _ | (_(_)   __   _ __  _   _    __   _ __ |     |   _ _ | |/ )    __   _ __ 
 | | | | | || | / _  | / _ \ ( ) ( ) ( ) \__ \  / __ \(  __)( ) ( ) / __ \(  __)| (_) | / _  )|   (   / __ \(  __)
 | (_/ \_) || |( (_| |( (_) )| \_/ \_/ |( )_) |(  ___/| |   | \_/ |(  ___/| |   | | | |( (_| || |\ \ (  ___/| |   
  \_(/\___/ ( ) ) _ _) \ __/  \  /\___/  \(___) )\___)(()    \   /  )\___)(()   (_) (_) \(_ _)( ) ( ) )\___)(()   
   (_)      /( (__)    /(      \(        (_)   (__)   (_)     \ /  (__)   (_)           (_)   /(  /( (__)   (_)   
           (__)       (__)     (_)                            (_)                            (__)(__)             
"
echo "---------------------------------------------"
if [ $(whoami) = 'root' ]; then
	echo "Checking user..."
    echo "You are root! Prooceding with installation..."
else
    echo "You are not root! Please use sudo or the Root user for this script"
    exit
fi
echo ""
echo "νєяѕιση: BETA 1.2 | ¢σ∂єηαмє ωι∂σω"
echo ""
echo "What νєяѕιση would you like to use? (example: 1.12.2)"
read version
clear
echo "Cool! What should the 🇫🇴🇱🇩🇪🇷 be 🇳🇦🇲🇪🇩?"
read fna
clear
echo "Perfect! Starting installation..."
sudo apt update
echo "Packages updated! Starting with Installation."
mkdir $fna
cd $fna
echo "Built with WidowServer Maker ;D" > WidowServerMaker.txt
echo -e '# Built with Widow Server Maker\n# For more info, read WidowServerMaker.txt\neula=true\n' > eula.txt
wget https://download.getbukkit.org/spigot/spigot-$version.jar
clear
echo "
  _               _           _    _           _                           ___    _____       __   
 (_)             ( )_        (_ ) (_ )        ( )_  _                     (  _ \ (_   _)    / __ \ 
 | |  ___    ___ |  _)   _ _  |(|  |(|    _ _ |  _)(_)   _     ___   _    | |_) )/|| |     (_)  ) )
 | |/  _  \/  __)| |   / _  ) |()  |()  / _  )| |  | | / _ \ /  _  \(_)   |  __/(_)| |        /  / 
 | || ( ) |\__  \| |_ ( (_| | | |  | | ( (_| || |_ | |( (_) )| ( ) | _    | |      | |   _  /  /( )
 (_)(() (_)(__(_/)\__) \(_ _)( (_)( (_) \(_ _))\__)( ) \ __/ (() (_)(_)   (_)      ( )  (_)(_____/ 
    (_)      /( (__)   (_)   (_)  (_)   (_)  (__)  /(  /(    (_)                   /(              
            (__)                                  (__)(__)                        (__)             
"
echo ""
echo "How much ram do you want to allocate in MB? (example 2048 for 2gb)"
read ram
echo "$ram is perfect for your server! Now, choose what java version to use below:"
echo "If your server is below 1.17, type 8 "
echo "If your server uses from 1.17 to 1.18, type 16"
echo "If your server uses 1.18 or higher, type 17"
echo "-------"
echo "ALERT!"
echo "If you already have Java from Apt, you should uninstall it or this script will broke."
echo "Soon will be released a version including manual java install from Adoptium's Precompiled Java JREs."
read javav
sudo apt install openjdk-$javav-jre -y
clear
echo "Java installed! Creating start.sh ..."
echo "java -Xmx"$ram"M -Xms"$ramM" -jar spigot-"$version".jar nogui" > start.sh
echo "File created.. chmodding in progress"
chmod +x start.sh
echo "Chmodded succesfully!"
clear
echo "
  _  _    _                  _    _           _                       _ 
 (_)( )_ ( )                (_ ) (_ )        ( )                     ( )
 | ||  _)|/   ___       _ _  |(|  |(|       _| |   _     ___     __  | |
 | || |     /  __)    / _  ) |()  |()     / _  | / _ \ /  _  \ / __ \| |
 | || |_    \__  \   ( (_| | | |  | |    ( (_| |( (_) )| ( ) |(  ___/(_)
 (_))\__)   (__(_/    \(_ _)( (_)( (_)    ) _ _) \ __/ (() (_) )\___)   
   (__)       /(      (_)   (_)  (_)     (__)    /(    (_)    (__)   (_)
             (__)                               (__)                    
"
echo ""
echo "Your server is ready!"
echo "You can run it by typing ./start.sh in the folder /root/"$fna"."
echo "Goodbye!"
echo "(P.S if you have found any bug please report it in the Issues tab on my github!)"
