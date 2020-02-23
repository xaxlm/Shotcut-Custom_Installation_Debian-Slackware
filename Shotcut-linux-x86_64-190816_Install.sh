cd /usr/share/applications/
touch shotcut.desktop
echo '[Desktop Entry]' > shotcut.desktop
echo 'Version=20.02.17' >> shotcut.desktop
echo 'Name=Shotcut' >> shotcut.desktop
echo 'Comment=Video Editor' >> shotcut.desktop
echo 'Exec=/usr/local/'$DIRINST'/shotcut/Shotcut.app/shotcut' >> shotcut.desktop
echo 'Icon=/usr/local/'$DIRINST'/shotcut/Shotcut.app/share/icons/hicolor/64x64/apps/org.shotcut.Shotcut.png' >> shotcut.desktop
echo 'Categories=Video;' >> shotcut.desktop
echo 'Terminal=false' >> shotcut.desktop
echo 'Type=Application' >> shotcut.desktop
cd /usr/local/$DIRINST/shotcut/
#
#Remove
touch remove.sh
echo "#!/bin/bash" > remove.sh
echo "echo '------------------------------'" >> remove.sh
echo "echo 'Removiendo...'" >> remove.sh
echo "echo -ne '[===>                                    ]( 8.33%)\r';sleep 0.2" >> remove.sh
echo "echo -ne '[=========>                              ](16.66%)\r';sleep 0.2" >> remove.sh
echo "echo -ne '[============>                           ](24.99%)\r';sleep 0.2" >> remove.sh
echo "echo -ne '[===============>                        ](33.32%)\r';sleep 0.2" >> remove.sh
echo "echo -ne '[==================>                     ](41.65%)\r';sleep 0.2" >> remove.sh
echo "echo -ne '[=====================>                  ](49.98%)\r';sleep 0.2" >> remove.sh
echo "echo -ne '[========================>               ](58.31%)\r';sleep 0.2" >> remove.sh
echo "echo -ne '[===========================>            ](66.64%)\r';sleep 0.2" >> remove.sh
echo "echo -ne '[==============================>         ](74.97%)\r';sleep 0.2" >> remove.sh
echo "echo -ne '[=================================>      ](83.30%)\r';sleep 0.2" >> remove.sh
echo "echo -ne '[====================================>   ](91.64%)\r';sleep 0.2" >> remove.sh
echo "echo -ne '[=======================================>](100.00%)\r';sleep 0.2" >> remove.sh
echo "echo -ne '\n'" >> remove.sh
echo 'cd /' >> remove.sh
echo 'rm /usr/share/applications/shotcut.desktop' >> remove.sh
echo 'rm -rf /usr/local/'$DIRINST'/shotcut/' >> remove.sh
echo 'rm -rf /home/*/.config/Meltytech/' >> remove.sh
echo "echo 'Completado!'" >> remove.sh
echo "echo '------------------------------'" >> remove.sh
echo 'exit' >> remove.sh
chmod 744 remove.sh
#
#README
touch README.txt
echo 'Shotcut' > README.txt
echo 'Idioma=es' >> README.txt
echo 'Version=20.02.17' >> README.txt
echo 'Arquitectura=64-bit' >> README.txt
echo 'Esta es una instalación no invasiva.' >> README.txt
echo 'Para desinstalar ejecute el fichero remove.sh como root.' >> README.txt
echo '' >> README.txt
echo 'https://www.shotcut.org/' >> README.txt
echo '' >> README.txt
echo 'xaxlm' >> README.txt
#
# Limpieza
cd /
echo '------------------------------'
echo "Limpiando..."
echo -ne '[===>                                    ]( 8.33%)\r';sleep 0.2
echo -ne '[=========>                              ](16.66%)\r';sleep 0.2
echo -ne '[============>                           ](24.99%)\r';sleep 0.2
echo -ne '[===============>                        ](33.32%)\r';sleep 0.2
echo -ne '[==================>                     ](41.65%)\r';sleep 0.2
echo -ne '[=====================>                  ](49.98%)\r';sleep 0.2
echo -ne '[========================>               ](58.31%)\r';sleep 0.2
echo -ne '[===========================>            ](66.64%)\r';sleep 0.2
echo -ne '[==============================>         ](74.97%)\r';sleep 0.2
echo -ne '[=================================>      ](83.30%)\r';sleep 0.2
echo -ne '[====================================>   ](91.64%)\r';sleep 0.2
echo -ne '[=======================================>](100.00%)\r';sleep 0.2
echo -ne '\n'
rm -rf /usr/local/$DIRINST/shotcut-linux-x86_64-200217.txz
if [ -d /home/*/.config/Meltytech/ ];
	then
		rm -rf /home/*/.config/Meltytech/
	else
		:
fi
echo "Completado!"
echo '------------------------------'
exit
