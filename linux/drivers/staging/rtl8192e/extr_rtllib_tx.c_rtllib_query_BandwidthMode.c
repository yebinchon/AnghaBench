
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bforced_tx20Mhz; } ;
struct rtllib_device {TYPE_1__ bandwidth_auto_switch; struct rt_hi_throughput* pHTInfo; } ;
struct rt_hi_throughput {scalar_t__ bCurTxBW40MHz; scalar_t__ bCurBW40MHz; int bEnableHT; int bCurrentHTSupport; } ;
struct cb_desc {int bPacketBW; int data_rate; scalar_t__ bBroadcast; scalar_t__ bMulticast; } ;



__attribute__((used)) static void rtllib_query_BandwidthMode(struct rtllib_device *ieee,
           struct cb_desc *tcb_desc)
{
 struct rt_hi_throughput *pHTInfo = ieee->pHTInfo;

 tcb_desc->bPacketBW = 0;

 if (!pHTInfo->bCurrentHTSupport || !pHTInfo->bEnableHT)
  return;

 if (tcb_desc->bMulticast || tcb_desc->bBroadcast)
  return;

 if ((tcb_desc->data_rate & 0x80) == 0)
  return;
 if (pHTInfo->bCurBW40MHz && pHTInfo->bCurTxBW40MHz &&
     !ieee->bandwidth_auto_switch.bforced_tx20Mhz)
  tcb_desc->bPacketBW = 1;
}
