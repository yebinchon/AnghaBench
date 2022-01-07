
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int bStopCoexDm; } ;
typedef TYPE_1__* PBTC_COEXIST ;


 int BTC_ANT_PATH_BT ;
 int BTC_MEDIA_DISCONNECT ;
 int BTC_MSG_INTERFACE ;
 int BTC_PRINT (int ,int ,char*) ;
 int BTC_PS_WIFI_NATIVE ;
 int EXhalbtc8723b1ant_MediaStatusNotify (TYPE_1__*,int ) ;
 int FORCE_EXEC ;
 int INTF_NOTIFY ;
 int halbtc8723b1ant_IgnoreWlanAct (TYPE_1__*,int ,int) ;
 int halbtc8723b1ant_PowerSaveState (TYPE_1__*,int ,int,int) ;
 int halbtc8723b1ant_PsTdma (TYPE_1__*,int ,int,int ) ;
 int halbtc8723b1ant_SetAntPath (TYPE_1__*,int ,int,int) ;

void EXhalbtc8723b1ant_HaltNotify(PBTC_COEXIST pBtCoexist)
{
 BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], Halt notify\n"));

 halbtc8723b1ant_PowerSaveState(pBtCoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);
 halbtc8723b1ant_PsTdma(pBtCoexist, FORCE_EXEC, 0, 0);
 halbtc8723b1ant_SetAntPath(pBtCoexist, BTC_ANT_PATH_BT, 0, 1);

 halbtc8723b1ant_IgnoreWlanAct(pBtCoexist, FORCE_EXEC, 1);

 EXhalbtc8723b1ant_MediaStatusNotify(pBtCoexist, BTC_MEDIA_DISCONNECT);

 pBtCoexist->bStopCoexDm = 1;
}
