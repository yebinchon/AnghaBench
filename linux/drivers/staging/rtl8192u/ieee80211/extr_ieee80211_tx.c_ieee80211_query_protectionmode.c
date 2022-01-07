
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct TYPE_3__ {int capability; scalar_t__ buseprotection; } ;
struct ieee80211_device {scalar_t__ mode; scalar_t__ rts; TYPE_1__ current_network; TYPE_2__* pHTInfo; } ;
struct cb_desc {int bRTSSTBC; int bRTSUseShortGI; int bCTSEnable; int bRTSBW; int bRTSEnable; int bUseShortPreamble; scalar_t__ RTSSC; void* rts_rate; scalar_t__ bAMPDUEnable; scalar_t__ bMulticast; scalar_t__ bBroadcast; } ;
struct TYPE_4__ {int CurrentOpMode; int IOTAction; scalar_t__ bCurBW40MHz; scalar_t__ bEnableHT; scalar_t__ bCurrentHTSupport; } ;
typedef TYPE_2__* PRT_HIGH_THROUGHPUT ;


 int HT_IOT_ACT_FORCED_CTS2SELF ;
 scalar_t__ IEEE_N_24G ;
 scalar_t__ IW_MODE_MASTER ;
 void* MGN_24M ;
 int WLAN_CAPABILITY_SHORT_PREAMBLE ;
 scalar_t__ is_broadcast_ether_addr (scalar_t__) ;

__attribute__((used)) static void ieee80211_query_protectionmode(struct ieee80211_device *ieee,
        struct cb_desc *tcb_desc,
        struct sk_buff *skb)
{

 tcb_desc->bRTSSTBC = 0;
 tcb_desc->bRTSUseShortGI = 0;
 tcb_desc->bCTSEnable = 0;
 tcb_desc->RTSSC = 0;
 tcb_desc->bRTSBW = 0;

 if (tcb_desc->bBroadcast || tcb_desc->bMulticast)
  return;

 if (is_broadcast_ether_addr(skb->data + 16))
  return;

 if (ieee->mode < IEEE_N_24G) {




  if (skb->len > ieee->rts) {
   tcb_desc->bRTSEnable = 1;
   tcb_desc->rts_rate = MGN_24M;
  } else if (ieee->current_network.buseprotection) {

   tcb_desc->bRTSEnable = 1;
   tcb_desc->bCTSEnable = 1;
   tcb_desc->rts_rate = MGN_24M;
  }

  return;
 } else {
  PRT_HIGH_THROUGHPUT pHTInfo = ieee->pHTInfo;
  while (1) {

   if (ieee->current_network.buseprotection) {
    tcb_desc->bRTSEnable = 1;
    tcb_desc->bCTSEnable = 1;
    tcb_desc->rts_rate = MGN_24M;
    break;
   }

   if (pHTInfo->bCurrentHTSupport && pHTInfo->bEnableHT) {
    u8 HTOpMode = pHTInfo->CurrentOpMode;
    if ((pHTInfo->bCurBW40MHz && (HTOpMode == 2 || HTOpMode == 3)) ||
       (!pHTInfo->bCurBW40MHz && HTOpMode == 3)) {
     tcb_desc->rts_rate = MGN_24M;
     tcb_desc->bRTSEnable = 1;
     break;
    }
   }

   if (skb->len > ieee->rts) {
    tcb_desc->rts_rate = MGN_24M;
    tcb_desc->bRTSEnable = 1;
    break;
   }


   if (tcb_desc->bAMPDUEnable) {
    tcb_desc->rts_rate = MGN_24M;


    tcb_desc->bRTSEnable = 0;
    break;
   }

   if (pHTInfo->IOTAction & HT_IOT_ACT_FORCED_CTS2SELF) {
    tcb_desc->bCTSEnable = 1;
    tcb_desc->rts_rate = MGN_24M;
    tcb_desc->bRTSEnable = 1;
    break;
   }

   goto NO_PROTECTION;
  }
  }

 if (0) {
  tcb_desc->bCTSEnable = 1;
  tcb_desc->rts_rate = MGN_24M;
  tcb_desc->bRTSEnable = 1;
 }
 if (ieee->current_network.capability & WLAN_CAPABILITY_SHORT_PREAMBLE)
  tcb_desc->bUseShortPreamble = 1;
 if (ieee->mode == IW_MODE_MASTER)
  goto NO_PROTECTION;
 return;
NO_PROTECTION:
 tcb_desc->bRTSEnable = 0;
 tcb_desc->bCTSEnable = 0;
 tcb_desc->rts_rate = 0;
 tcb_desc->RTSSC = 0;
 tcb_desc->bRTSBW = 0;
}
