
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_9__ {int btdmAntNum; } ;
struct TYPE_8__ {int cntLpsNotify; } ;
struct TYPE_10__ {TYPE_2__ boardInfo; scalar_t__ bManualControl; TYPE_1__ statistics; } ;
typedef TYPE_3__* PBTC_COEXIST ;


 scalar_t__ BTC_LPS_DISABLE ;
 scalar_t__ BTC_LPS_ENABLE ;
 int EXhalbtc8723b1ant_LpsNotify (TYPE_3__*,scalar_t__) ;
 int EXhalbtc8723b2ant_LpsNotify (TYPE_3__*,scalar_t__) ;
 scalar_t__ PS_MODE_ACTIVE ;
 int halbtcoutsrc_IsBtCoexistAvailable (TYPE_3__*) ;

void EXhalbtcoutsrc_LpsNotify(PBTC_COEXIST pBtCoexist, u8 type)
{
 u8 lpsType;


 if (!halbtcoutsrc_IsBtCoexistAvailable(pBtCoexist))
  return;

 pBtCoexist->statistics.cntLpsNotify++;
 if (pBtCoexist->bManualControl)
  return;

 if (PS_MODE_ACTIVE == type)
  lpsType = BTC_LPS_DISABLE;
 else
  lpsType = BTC_LPS_ENABLE;

 if (pBtCoexist->boardInfo.btdmAntNum == 2)
  EXhalbtc8723b2ant_LpsNotify(pBtCoexist, lpsType);
 else if (pBtCoexist->boardInfo.btdmAntNum == 1)
  EXhalbtc8723b1ant_LpsNotify(pBtCoexist, lpsType);
}
