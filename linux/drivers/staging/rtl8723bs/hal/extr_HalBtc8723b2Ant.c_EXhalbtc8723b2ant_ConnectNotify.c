
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int PBTC_COEXIST ;


 scalar_t__ BTC_ASSOCIATE_FINISH ;
 scalar_t__ BTC_ASSOCIATE_START ;
 int BTC_MSG_INTERFACE ;
 int BTC_PRINT (int ,int ,char*) ;
 int INTF_NOTIFY ;

void EXhalbtc8723b2ant_ConnectNotify(PBTC_COEXIST pBtCoexist, u8 type)
{
 if (BTC_ASSOCIATE_START == type) {
  BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], CONNECT START notify\n"));
 } else if (BTC_ASSOCIATE_FINISH == type) {
  BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], CONNECT FINISH notify\n"));
 }
}
