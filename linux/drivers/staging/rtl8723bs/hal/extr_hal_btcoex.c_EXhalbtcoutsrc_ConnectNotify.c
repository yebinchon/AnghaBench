
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_9__ {int btdmAntNum; } ;
struct TYPE_8__ {int cntConnectNotify; } ;
struct TYPE_10__ {TYPE_2__ boardInfo; scalar_t__ bManualControl; TYPE_1__ statistics; } ;
typedef TYPE_3__* PBTC_COEXIST ;


 scalar_t__ BTC_ASSOCIATE_FINISH ;
 scalar_t__ BTC_ASSOCIATE_START ;
 int EXhalbtc8723b1ant_ConnectNotify (TYPE_3__*,scalar_t__) ;
 int EXhalbtc8723b2ant_ConnectNotify (TYPE_3__*,scalar_t__) ;
 int halbtcoutsrc_IsBtCoexistAvailable (TYPE_3__*) ;

void EXhalbtcoutsrc_ConnectNotify(PBTC_COEXIST pBtCoexist, u8 action)
{
 u8 assoType;

 if (!halbtcoutsrc_IsBtCoexistAvailable(pBtCoexist))
  return;
 pBtCoexist->statistics.cntConnectNotify++;
 if (pBtCoexist->bManualControl)
  return;

 if (action)
  assoType = BTC_ASSOCIATE_START;
 else
  assoType = BTC_ASSOCIATE_FINISH;




 if (pBtCoexist->boardInfo.btdmAntNum == 2)
  EXhalbtc8723b2ant_ConnectNotify(pBtCoexist, assoType);
 else if (pBtCoexist->boardInfo.btdmAntNum == 1)
  EXhalbtc8723b1ant_ConnectNotify(pBtCoexist, assoType);


}
