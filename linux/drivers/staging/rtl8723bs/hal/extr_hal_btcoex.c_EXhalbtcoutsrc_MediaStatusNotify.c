
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_9__ {int btdmAntNum; } ;
struct TYPE_8__ {int cntMediaStatusNotify; } ;
struct TYPE_10__ {TYPE_2__ boardInfo; scalar_t__ bManualControl; TYPE_1__ statistics; } ;
typedef scalar_t__ RT_MEDIA_STATUS ;
typedef TYPE_3__* PBTC_COEXIST ;


 int BTC_MEDIA_CONNECT ;
 int BTC_MEDIA_DISCONNECT ;
 int EXhalbtc8723b1ant_MediaStatusNotify (TYPE_3__*,int ) ;
 int EXhalbtc8723b2ant_MediaStatusNotify (TYPE_3__*,int ) ;
 scalar_t__ RT_MEDIA_CONNECT ;
 int halbtcoutsrc_IsBtCoexistAvailable (TYPE_3__*) ;

void EXhalbtcoutsrc_MediaStatusNotify(PBTC_COEXIST pBtCoexist, RT_MEDIA_STATUS mediaStatus)
{
 u8 mStatus;

 if (!halbtcoutsrc_IsBtCoexistAvailable(pBtCoexist))
  return;

 pBtCoexist->statistics.cntMediaStatusNotify++;
 if (pBtCoexist->bManualControl)
  return;

 if (RT_MEDIA_CONNECT == mediaStatus)
  mStatus = BTC_MEDIA_CONNECT;
 else
  mStatus = BTC_MEDIA_DISCONNECT;




 if (pBtCoexist->boardInfo.btdmAntNum == 2)
  EXhalbtc8723b2ant_MediaStatusNotify(pBtCoexist, mStatus);
 else if (pBtCoexist->boardInfo.btdmAntNum == 1)
  EXhalbtc8723b1ant_MediaStatusNotify(pBtCoexist, mStatus);


}
