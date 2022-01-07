
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bforced_tx20Mhz; } ;
struct ieee80211_device {TYPE_1__ bandwidth_auto_switch; TYPE_2__* pHTInfo; } ;
struct cb_desc {int bPacketBW; int data_rate; scalar_t__ bBroadcast; scalar_t__ bMulticast; } ;
struct TYPE_4__ {scalar_t__ bCurTxBW40MHz; scalar_t__ bCurBW40MHz; int bEnableHT; int bCurrentHTSupport; } ;
typedef TYPE_2__* PRT_HIGH_THROUGHPUT ;



__attribute__((used)) static void ieee80211_query_BandwidthMode(struct ieee80211_device *ieee,
       struct cb_desc *tcb_desc)
{
 PRT_HIGH_THROUGHPUT pHTInfo = ieee->pHTInfo;

 tcb_desc->bPacketBW = 0;

 if (!pHTInfo->bCurrentHTSupport || !pHTInfo->bEnableHT)
  return;

 if (tcb_desc->bMulticast || tcb_desc->bBroadcast)
  return;

 if ((tcb_desc->data_rate & 0x80) == 0)
  return;

 if (pHTInfo->bCurBW40MHz && pHTInfo->bCurTxBW40MHz && !ieee->bandwidth_auto_switch.bforced_tx20Mhz)
  tcb_desc->bPacketBW = 1;
 return;
}
