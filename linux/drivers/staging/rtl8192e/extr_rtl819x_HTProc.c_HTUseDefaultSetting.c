
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int supported; int active; } ;
struct TYPE_4__ {TYPE_1__ qos_data; } ;
struct rtllib_device {scalar_t__ iw_mode; int HTHighestOperaRate; int HTCurrentOperaRate; int dot11HTOperationalRateSet; int Regdot11TxHTOperationalRateSet; TYPE_2__ current_network; struct rt_hi_throughput* pHTInfo; } ;
struct rt_hi_throughput {int bCurrentHTSupport; int CurrentMPDUDensity; int AMPDU_Factor; int CurrentAMPDUFactor; int bAMPDUEnable; int bCurrentAMPDUEnable; int nAMSDU_MaxSize; int nCurrent_AMSDU_MaxSize; int bAMSDU_Support; int bCurrent_AMSDU_Support; int bRegShortGI40MHz; int bCurShortGI40MHz; int bRegShortGI20MHz; int bCurShortGI20MHz; int bRegBW40MHz; int bCurBW40MHz; int bRegSuppCCK; int bCurSuppCCK; scalar_t__ bEnableHT; } ;


 int HTFilterMCSRate (struct rtllib_device*,int ,int ) ;
 int HTGetHighestMCSRate (struct rtllib_device*,int ,int ) ;
 scalar_t__ IW_MODE_ADHOC ;
 int MCS_FILTER_ALL ;

void HTUseDefaultSetting(struct rtllib_device *ieee)
{
 struct rt_hi_throughput *pHTInfo = ieee->pHTInfo;

 if (pHTInfo->bEnableHT) {
  pHTInfo->bCurrentHTSupport = 1;
  pHTInfo->bCurSuppCCK = pHTInfo->bRegSuppCCK;

  pHTInfo->bCurBW40MHz = pHTInfo->bRegBW40MHz;
  pHTInfo->bCurShortGI20MHz = pHTInfo->bRegShortGI20MHz;

  pHTInfo->bCurShortGI40MHz = pHTInfo->bRegShortGI40MHz;

  if (ieee->iw_mode == IW_MODE_ADHOC)
   ieee->current_network.qos_data.active =
     ieee->current_network.qos_data.supported;
  pHTInfo->bCurrent_AMSDU_Support = pHTInfo->bAMSDU_Support;
  pHTInfo->nCurrent_AMSDU_MaxSize = pHTInfo->nAMSDU_MaxSize;

  pHTInfo->bCurrentAMPDUEnable = pHTInfo->bAMPDUEnable;
  pHTInfo->CurrentAMPDUFactor = pHTInfo->AMPDU_Factor;

  pHTInfo->CurrentMPDUDensity = pHTInfo->CurrentMPDUDensity;

  HTFilterMCSRate(ieee, ieee->Regdot11TxHTOperationalRateSet,
    ieee->dot11HTOperationalRateSet);
  ieee->HTHighestOperaRate = HTGetHighestMCSRate(ieee,
        ieee->dot11HTOperationalRateSet,
        MCS_FILTER_ALL);
  ieee->HTCurrentOperaRate = ieee->HTHighestOperaRate;

 } else {
  pHTInfo->bCurrentHTSupport = 0;
 }
}
