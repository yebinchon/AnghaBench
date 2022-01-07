
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int seq_num; } ;
struct TYPE_6__ {TYPE_1__ field; } ;
struct TYPE_7__ {TYPE_2__ start_seq_ctrl; int valid; } ;
struct tx_ts_record {int using_ba; int tx_cur_seq; TYPE_3__ tx_admitted_ba_record; } ;
struct ts_common_info {int dummy; } ;
struct sk_buff {int priority; scalar_t__ data; } ;
struct rtl_80211_hdr_1addr {int addr1; } ;
struct ieee80211_device {scalar_t__ iw_mode; int dev; int (* GetNmodeSupportBySecCfg ) (int ) ;TYPE_4__* pHTInfo; } ;
struct cb_desc {int bAMPDUEnable; int ampdu_factor; int ampdu_density; } ;
struct TYPE_8__ {int ForcedAMPDUMode; int ForcedAMPDUFactor; int ForcedMPDUDensity; int CurrentMPDUDensity; int CurrentAMPDUFactor; scalar_t__ bCurrentAMPDUEnable; int bEnableHT; int bCurrentHTSupport; } ;
typedef TYPE_4__* PRT_HIGH_THROUGHPUT ;


 int GetTs (struct ieee80211_device*,struct ts_common_info**,int ,int ,int ,int) ;



 scalar_t__ IW_MODE_INFRA ;
 int IsQoSDataFrame (scalar_t__) ;
 scalar_t__ SN_LESS (int ,int) ;
 int TX_DIR ;
 int TsStartAddBaProcess (struct ieee80211_device*,struct tx_ts_record*) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 int printk (char*) ;
 int stub1 (int ) ;

__attribute__((used)) static void ieee80211_tx_query_agg_cap(struct ieee80211_device *ieee,
           struct sk_buff *skb, struct cb_desc *tcb_desc)
{
 PRT_HIGH_THROUGHPUT pHTInfo = ieee->pHTInfo;
 struct tx_ts_record *pTxTs = ((void*)0);
 struct rtl_80211_hdr_1addr *hdr = (struct rtl_80211_hdr_1addr *)skb->data;

 if (!pHTInfo->bCurrentHTSupport || !pHTInfo->bEnableHT)
  return;
 if (!IsQoSDataFrame(skb->data))
  return;

 if (is_multicast_ether_addr(hdr->addr1))
  return;

 if (!ieee->GetNmodeSupportBySecCfg(ieee->dev)) {
  return;
 }
 if (pHTInfo->bCurrentAMPDUEnable) {
  if (!GetTs(ieee, (struct ts_common_info **)(&pTxTs), hdr->addr1, skb->priority, TX_DIR, 1)) {
   printk("===>can't get TS\n");
   return;
  }
  if (!pTxTs->tx_admitted_ba_record.valid) {
   TsStartAddBaProcess(ieee, pTxTs);
   goto FORCED_AGG_SETTING;
  } else if (!pTxTs->using_ba) {
   if (SN_LESS(pTxTs->tx_admitted_ba_record.start_seq_ctrl.field.seq_num, (pTxTs->tx_cur_seq + 1) % 4096))
    pTxTs->using_ba = 1;
   else
    goto FORCED_AGG_SETTING;
  }

  if (ieee->iw_mode == IW_MODE_INFRA) {
   tcb_desc->bAMPDUEnable = 1;
   tcb_desc->ampdu_factor = pHTInfo->CurrentAMPDUFactor;
   tcb_desc->ampdu_density = pHTInfo->CurrentMPDUDensity;
  }
 }
FORCED_AGG_SETTING:
 switch (pHTInfo->ForcedAMPDUMode) {
  case 130:
   break;

  case 128:
   tcb_desc->bAMPDUEnable = 1;
   tcb_desc->ampdu_density = pHTInfo->ForcedMPDUDensity;
   tcb_desc->ampdu_factor = pHTInfo->ForcedAMPDUFactor;
   break;

  case 129:
   tcb_desc->bAMPDUEnable = 0;
   tcb_desc->ampdu_density = 0;
   tcb_desc->ampdu_factor = 0;
   break;

 }
  return;
}
