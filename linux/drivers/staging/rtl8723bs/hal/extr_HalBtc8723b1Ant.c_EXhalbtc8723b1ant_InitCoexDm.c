
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int bStopCoexDm; } ;
typedef TYPE_1__* PBTC_COEXIST ;


 int BTC_MSG_INTERFACE ;
 int BTC_PRINT (int ,int ,char*) ;
 int INTF_INIT ;
 int halbtc8723b1ant_InitCoexDm (TYPE_1__*) ;
 int halbtc8723b1ant_QueryBtInfo (TYPE_1__*) ;

void EXhalbtc8723b1ant_InitCoexDm(PBTC_COEXIST pBtCoexist)
{
 BTC_PRINT(
  BTC_MSG_INTERFACE,
  INTF_INIT,
  ("[BTCoex], Coex Mechanism Init!!\n")
 );

 pBtCoexist->bStopCoexDm = 0;

 halbtc8723b1ant_InitCoexDm(pBtCoexist);

 halbtc8723b1ant_QueryBtInfo(pBtCoexist);
}
