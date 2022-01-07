
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {int bUnderLps; } ;
typedef int PBTC_COEXIST ;


 scalar_t__ BTC_LPS_DISABLE ;
 scalar_t__ BTC_LPS_ENABLE ;
 int BTC_MSG_INTERFACE ;
 int BTC_PRINT (int ,int ,char*) ;
 int INTF_NOTIFY ;
 TYPE_1__* pCoexSta ;

void EXhalbtc8723b2ant_LpsNotify(PBTC_COEXIST pBtCoexist, u8 type)
{
 if (BTC_LPS_ENABLE == type) {
  BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], LPS ENABLE notify\n"));
  pCoexSta->bUnderLps = 1;
 } else if (BTC_LPS_DISABLE == type) {
  BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], LPS DISABLE notify\n"));
  pCoexSta->bUnderLps = 0;
 }
}
