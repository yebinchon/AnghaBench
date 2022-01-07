
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_device {TYPE_1__* pHTInfo; } ;
struct cb_desc {int bUseShortGI; } ;
struct TYPE_2__ {int bCurBW40MHz; scalar_t__ bCurShortGI20MHz; scalar_t__ bCurShortGI40MHz; scalar_t__ bForcedShortGI; int bEnableHT; int bCurrentHTSupport; } ;
typedef TYPE_1__* PRT_HIGH_THROUGHPUT ;



__attribute__((used)) static void
ieee80211_query_HTCapShortGI(struct ieee80211_device *ieee, struct cb_desc *tcb_desc)
{
 PRT_HIGH_THROUGHPUT pHTInfo = ieee->pHTInfo;

 tcb_desc->bUseShortGI = 0;

 if (!pHTInfo->bCurrentHTSupport || !pHTInfo->bEnableHT)
  return;

 if (pHTInfo->bForcedShortGI) {
  tcb_desc->bUseShortGI = 1;
  return;
 }

 if ((pHTInfo->bCurBW40MHz == 1) && pHTInfo->bCurShortGI40MHz)
  tcb_desc->bUseShortGI = 1;
 else if ((pHTInfo->bCurBW40MHz == 0) && pHTInfo->bCurShortGI20MHz)
  tcb_desc->bUseShortGI = 1;
}
