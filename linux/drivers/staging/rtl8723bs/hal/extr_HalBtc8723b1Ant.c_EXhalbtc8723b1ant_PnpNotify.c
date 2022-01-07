
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_10__ {int bStopCoexDm; } ;
typedef TYPE_1__* PBTC_COEXIST ;


 int BTC_ANT_PATH_BT ;
 int BTC_MSG_INTERFACE ;
 int BTC_PRINT (int ,int ,char*) ;
 int BTC_PS_WIFI_NATIVE ;
 scalar_t__ BTC_WIFI_PNP_SLEEP ;
 scalar_t__ BTC_WIFI_PNP_WAKE_UP ;
 int INTF_NOTIFY ;
 int NORMAL_EXEC ;
 int halbtc8723b1ant_CoexTableWithType (TYPE_1__*,int ,int) ;
 int halbtc8723b1ant_InitCoexDm (TYPE_1__*) ;
 int halbtc8723b1ant_InitHwConfig (TYPE_1__*,int,int) ;
 int halbtc8723b1ant_PowerSaveState (TYPE_1__*,int ,int,int) ;
 int halbtc8723b1ant_PsTdma (TYPE_1__*,int ,int,int ) ;
 int halbtc8723b1ant_QueryBtInfo (TYPE_1__*) ;
 int halbtc8723b1ant_SetAntPath (TYPE_1__*,int ,int,int) ;

void EXhalbtc8723b1ant_PnpNotify(PBTC_COEXIST pBtCoexist, u8 pnpState)
{
 BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], Pnp notify\n"));

 if (BTC_WIFI_PNP_SLEEP == pnpState) {
  BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], Pnp notify to SLEEP\n"));

  halbtc8723b1ant_PowerSaveState(pBtCoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);
  halbtc8723b1ant_PsTdma(pBtCoexist, NORMAL_EXEC, 0, 0);
  halbtc8723b1ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 2);
  halbtc8723b1ant_SetAntPath(pBtCoexist, BTC_ANT_PATH_BT, 0, 1);

  pBtCoexist->bStopCoexDm = 1;
 } else if (BTC_WIFI_PNP_WAKE_UP == pnpState) {
  BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], Pnp notify to WAKE UP\n"));
  pBtCoexist->bStopCoexDm = 0;
  halbtc8723b1ant_InitHwConfig(pBtCoexist, 0, 0);
  halbtc8723b1ant_InitCoexDm(pBtCoexist);
  halbtc8723b1ant_QueryBtInfo(pBtCoexist);
 }
}
