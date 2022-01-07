
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {int bUnderIps; } ;
typedef int PBTC_COEXIST ;


 scalar_t__ BTC_IPS_ENTER ;
 scalar_t__ BTC_IPS_LEAVE ;
 int BTC_MSG_INTERFACE ;
 int BTC_PRINT (int ,int ,char*) ;
 int FORCE_EXEC ;
 int INTF_NOTIFY ;
 int halbtc8723b2ant_CoexAllOff (int ) ;
 int halbtc8723b2ant_IgnoreWlanAct (int ,int ,int) ;
 int halbtc8723b2ant_InitCoexDm (int ) ;
 int halbtc8723b2ant_InitHwConfig (int ,int) ;
 int halbtc8723b2ant_QueryBtInfo (int ) ;
 int halbtc8723b2ant_WifiOffHwCfg (int ) ;
 TYPE_1__* pCoexSta ;

void EXhalbtc8723b2ant_IpsNotify(PBTC_COEXIST pBtCoexist, u8 type)
{
 if (BTC_IPS_ENTER == type) {
  BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], IPS ENTER notify\n"));
  pCoexSta->bUnderIps = 1;
  halbtc8723b2ant_WifiOffHwCfg(pBtCoexist);
  halbtc8723b2ant_IgnoreWlanAct(pBtCoexist, FORCE_EXEC, 1);
  halbtc8723b2ant_CoexAllOff(pBtCoexist);
 } else if (BTC_IPS_LEAVE == type) {
  BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], IPS LEAVE notify\n"));
  pCoexSta->bUnderIps = 0;
  halbtc8723b2ant_InitHwConfig(pBtCoexist, 0);
  halbtc8723b2ant_InitCoexDm(pBtCoexist);
  halbtc8723b2ant_QueryBtInfo(pBtCoexist);
 }
}
