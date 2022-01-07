
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PBTC_COEXIST ;


 int BTC_MSG_INTERFACE ;
 int BTC_PRINT (int ,int ,char*) ;
 int INTF_INIT ;
 int halbtc8723b2ant_InitCoexDm (int ) ;

void EXhalbtc8723b2ant_InitCoexDm(PBTC_COEXIST pBtCoexist)
{
 BTC_PRINT(BTC_MSG_INTERFACE, INTF_INIT, ("[BTCoex], Coex Mechanism Init!!\n"));

 halbtc8723b2ant_InitCoexDm(pBtCoexist);
}
