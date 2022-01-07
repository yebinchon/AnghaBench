
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int PBTC_COEXIST ;


 int BTC_MSG_INTERFACE ;
 int BTC_PRINT (int ,int ,char*) ;
 scalar_t__ BTC_WIFI_PNP_SLEEP ;
 scalar_t__ BTC_WIFI_PNP_WAKE_UP ;
 int INTF_NOTIFY ;
 int halbtc8723b2ant_InitCoexDm (int ) ;
 int halbtc8723b2ant_InitHwConfig (int ,int) ;
 int halbtc8723b2ant_QueryBtInfo (int ) ;

void EXhalbtc8723b2ant_PnpNotify(PBTC_COEXIST pBtCoexist, u8 pnpState)
{
 BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], Pnp notify\n"));

 if (BTC_WIFI_PNP_SLEEP == pnpState) {
  BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], Pnp notify to SLEEP\n"));
 } else if (BTC_WIFI_PNP_WAKE_UP == pnpState) {
  BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], Pnp notify to WAKE UP\n"));
  halbtc8723b2ant_InitHwConfig(pBtCoexist, 0);
  halbtc8723b2ant_InitCoexDm(pBtCoexist);
  halbtc8723b2ant_QueryBtInfo(pBtCoexist);
 }
}
