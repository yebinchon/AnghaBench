
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int PBTC_COEXIST ;


 int BTC_MSG_INTERFACE ;
 int BTC_PRINT (int ,int ,char*) ;
 scalar_t__ BTC_SCAN_FINISH ;
 scalar_t__ BTC_SCAN_START ;
 int INTF_NOTIFY ;

void EXhalbtc8723b2ant_ScanNotify(PBTC_COEXIST pBtCoexist, u8 type)
{
 if (BTC_SCAN_START == type) {
  BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], SCAN START notify\n"));
 } else if (BTC_SCAN_FINISH == type) {
  BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], SCAN FINISH notify\n"));
 }
}
