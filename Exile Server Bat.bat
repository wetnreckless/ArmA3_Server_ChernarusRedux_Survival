::Exile Server 1 Monitor
@echo off
color 0a
title Exile Server 1 Monitor
C:\Windows\System32\mode con cols=50 lines=3 >nul
set /a var=0
:start
echo Running Exile Server 1
start "" /min /wait /affinity C "arma3server_x64.exe" -port=2302 "-config=C:\arma3_1\@ExileServer\config.cfg" "-profiles=Config" "-cfg=C:\arma3_1\@ExileServer\basic.cfg" -name=Exile "-servermod=@exileserver;@infiSTAR_Exile;@A3XAI;" "-mod=@exile;@CUP_Terrains-Core;@ChernarusRedux;@CBA_A3;@Enhanced_Movement;@Legacy;@NIArms;@ZombiesandDemons;@CUP_Units;@CUP_Weapons;@CUP_Vehicles;" -log -autoinit -loadMissionToMemory^ -enableHT -filepatching -hugePages
set /a var+=1
cls
echo Server has shutdown %var% times, restarting
goto start