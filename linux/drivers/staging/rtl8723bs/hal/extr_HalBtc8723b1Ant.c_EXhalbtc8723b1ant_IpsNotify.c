
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_11__ {int bUnderIps; } ;
struct TYPE_10__ {scalar_t__ bStopCoexDm; scalar_t__ bManualControl; } ;
typedef TYPE_1__* PBTC_COEXIST ;


 int BTC_ANT_PATH_BT ;
 scalar_t__ BTC_IPS_ENTER ;
 scalar_t__ BTC_IPS_LEAVE ;
 int BTC_MSG_INTERFACE ;
 int BTC_PRINT (int ,int ,char*) ;
 int INTF_NOTIFY ;
 int NORMAL_EXEC ;
 int halbtc8723b1ant_CoexTableWithType (TYPE_1__*,int ,int ) ;
 int halbtc8723b1ant_InitCoexDm (TYPE_1__*) ;
 int halbtc8723b1ant_InitHwConfig (TYPE_1__*,int,int) ;
 int halbtc8723b1ant_PsTdma (TYPE_1__*,int ,int,int ) ;
 int halbtc8723b1ant_QueryBtInfo (TYPE_1__*) ;
 int halbtc8723b1ant_SetAntPath (TYPE_1__*,int ,int,int) ;
 TYPE_2__* pCoexSta ;

void EXhalbtc8723b1ant_IpsNotify(PBTC_COEXIST pBtCoexist, u8 type)
{
 if (pBtCoexist->bManualControl || pBtCoexist->bStopCoexDm)
  return;

 if (BTC_IPS_ENTER == type) {
  BTC_PRINT(
   BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], IPS ENTER notify\n")
  );
  pCoexSta->bUnderIps = 1;

  halbtc8723b1ant_PsTdma(pBtCoexist, NORMAL_EXEC, 0, 0);
  halbtc8723b1ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 0);
  halbtc8723b1ant_SetAntPath(pBtCoexist, BTC_ANT_PATH_BT, 0, 1);
 } else if (BTC_IPS_LEAVE == type) {
  BTC_PRINT(
   BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], IPS LEAVE notify\n")
  );
  pCoexSta->bUnderIps = 0;

  halbtc8723b1ant_InitHwConfig(pBtCoexist, 0, 0);
  halbtc8723b1ant_InitCoexDm(pBtCoexist);
  halbtc8723b1ant_QueryBtInfo(pBtCoexist);
 }
}
