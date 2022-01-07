
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_5__ {int bUnderLps; } ;
struct TYPE_4__ {scalar_t__ bStopCoexDm; scalar_t__ bManualControl; } ;
typedef TYPE_1__* PBTC_COEXIST ;


 scalar_t__ BTC_LPS_DISABLE ;
 scalar_t__ BTC_LPS_ENABLE ;
 int BTC_MSG_INTERFACE ;
 int BTC_PRINT (int ,int ,char*) ;
 int INTF_NOTIFY ;
 TYPE_2__* pCoexSta ;

void EXhalbtc8723b1ant_LpsNotify(PBTC_COEXIST pBtCoexist, u8 type)
{
 if (pBtCoexist->bManualControl || pBtCoexist->bStopCoexDm)
  return;

 if (BTC_LPS_ENABLE == type) {
  BTC_PRINT(
   BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], LPS ENABLE notify\n")
  );
  pCoexSta->bUnderLps = 1;
 } else if (BTC_LPS_DISABLE == type) {
  BTC_PRINT(
   BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], LPS DISABLE notify\n")
  );
  pCoexSta->bUnderLps = 0;
 }
}
