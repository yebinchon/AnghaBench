
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct rtl_80211_hdr_3addr {int addr2; int frame_ctl; } ;
struct ieee80211_rx_stats {int len; } ;
struct TYPE_5__ {int bdHTInfoLen; int bdHTInfoBuf; int bdHTCapLen; int bdHTCapBuf; } ;
struct ieee80211_network {TYPE_2__ bssht; } ;
struct TYPE_6__ {int reassoc; int rx_ass_err; int rx_ass_ok; } ;
struct ieee80211_device {scalar_t__ ps; scalar_t__ iw_mode; scalar_t__ state; int softmac_features; int assoc_id; int associate_procedure_wq; TYPE_3__ softmac_stats; int AsocRetryCount; int dev; int (* handle_assoc_response ) (int ,struct ieee80211_assoc_response_frame*,struct ieee80211_network*) ;TYPE_1__* pHTInfo; int qos_support; int last_rx_ps_time; int ps_task; scalar_t__ sta_sleep; int proto_started; } ;
struct ieee80211_assoc_response_frame {int info_element; } ;
struct TYPE_4__ {int PeerHTInfoBuf; int PeerHTCapBuf; } ;


 scalar_t__ IEEE80211_ASSOCIATING ;
 scalar_t__ IEEE80211_ASSOCIATING_AUTHENTICATED ;
 scalar_t__ IEEE80211_ASSOCIATING_AUTHENTICATING ;
 int IEEE80211_DEBUG_MGMT (char*,...) ;
 scalar_t__ IEEE80211_LINKED ;
 scalar_t__ IEEE80211_PS_DISABLED ;



 int IEEE80211_STYPE_BEACON ;




 int IEEE80211_STYPE_PROBE_RESP ;


 int IEEE_SOFTMAC_ASSOCIATE ;
 int IEEE_SOFTMAC_PROBERS ;
 scalar_t__ IW_MODE_ADHOC ;
 scalar_t__ IW_MODE_INFRA ;
 scalar_t__ IW_MODE_MASTER ;
 int RT_ASOC_RETRY_LIMIT ;
 int RemovePeerTS (struct ieee80211_device*,int ) ;
 int WLAN_FC_GET_STYPE (int ) ;
 int assoc_parse (struct ieee80211_device*,struct sk_buff*,int*) ;
 int ieee80211_associate_abort (struct ieee80211_device*) ;
 int ieee80211_associate_complete (struct ieee80211_device*) ;
 int ieee80211_check_auth_response (struct ieee80211_device*,struct sk_buff*) ;
 int ieee80211_parse_info_param (struct ieee80211_device*,int ,int ,struct ieee80211_network*,struct ieee80211_rx_stats*) ;
 int ieee80211_process_action (struct ieee80211_device*,struct sk_buff*) ;
 int ieee80211_rx_assoc_rq (struct ieee80211_device*,struct sk_buff*) ;
 int ieee80211_rx_auth_rq (struct ieee80211_device*,struct sk_buff*) ;
 int ieee80211_rx_probe_rq (struct ieee80211_device*,struct sk_buff*) ;
 int jiffies ;
 int memcpy (int ,int ,int ) ;
 int memset (struct ieee80211_network*,int ,int) ;
 int notify_wx_assoc_event (struct ieee80211_device*) ;
 int printk (char*,int ) ;
 int schedule_work (int *) ;
 int stub1 (int ,struct ieee80211_assoc_response_frame*,struct ieee80211_network*) ;
 int tasklet_schedule (int *) ;

inline int
ieee80211_rx_frame_softmac(struct ieee80211_device *ieee, struct sk_buff *skb,
      struct ieee80211_rx_stats *rx_stats, u16 type,
      u16 stype)
{
 struct rtl_80211_hdr_3addr *header = (struct rtl_80211_hdr_3addr *)skb->data;
 u16 errcode;
 int aid;
 struct ieee80211_assoc_response_frame *assoc_resp;


 if (!ieee->proto_started)
  return 0;

 if (ieee->sta_sleep || (ieee->ps != IEEE80211_PS_DISABLED &&
    ieee->iw_mode == IW_MODE_INFRA &&
    ieee->state == IEEE80211_LINKED))
  tasklet_schedule(&ieee->ps_task);

 if (WLAN_FC_GET_STYPE(header->frame_ctl) != IEEE80211_STYPE_PROBE_RESP &&
     WLAN_FC_GET_STYPE(header->frame_ctl) != IEEE80211_STYPE_BEACON)
  ieee->last_rx_ps_time = jiffies;

 switch (WLAN_FC_GET_STYPE(header->frame_ctl)) {
 case 135:
 case 128:
  IEEE80211_DEBUG_MGMT("received [RE]ASSOCIATION RESPONSE (%d)\n",
    WLAN_FC_GET_STYPE(header->frame_ctl));
  if ((ieee->softmac_features & IEEE_SOFTMAC_ASSOCIATE) &&
      ieee->state == IEEE80211_ASSOCIATING_AUTHENTICATED &&
      ieee->iw_mode == IW_MODE_INFRA) {
   struct ieee80211_network network_resp;
   struct ieee80211_network *network = &network_resp;

   errcode = assoc_parse(ieee, skb, &aid);
   if (!errcode) {
    ieee->state = IEEE80211_LINKED;
    ieee->assoc_id = aid;
    ieee->softmac_stats.rx_ass_ok++;


    if (ieee->qos_support) {
     assoc_resp = (struct ieee80211_assoc_response_frame *)skb->data;
     memset(network, 0, sizeof(*network));
     if (ieee80211_parse_info_param(ieee, assoc_resp->info_element, rx_stats->len - sizeof(*assoc_resp), network, rx_stats)) {


      return 1;
     } else {

      memcpy(ieee->pHTInfo->PeerHTCapBuf, network->bssht.bdHTCapBuf, network->bssht.bdHTCapLen);
      memcpy(ieee->pHTInfo->PeerHTInfoBuf, network->bssht.bdHTInfoBuf, network->bssht.bdHTInfoLen);
     }
     if (ieee->handle_assoc_response)
      ieee->handle_assoc_response(ieee->dev, (struct ieee80211_assoc_response_frame *)header, network);
    }
    ieee80211_associate_complete(ieee);
   } else {

    ieee->softmac_stats.rx_ass_err++;
    printk("Association response status code 0x%x\n",
           errcode);
    IEEE80211_DEBUG_MGMT("Association response status code 0x%x\n",
           errcode);
    if (ieee->AsocRetryCount < RT_ASOC_RETRY_LIMIT)
     schedule_work(&ieee->associate_procedure_wq);
    else
     ieee80211_associate_abort(ieee);
   }
  }
  break;

 case 136:
 case 129:
  if ((ieee->softmac_features & IEEE_SOFTMAC_ASSOCIATE) &&
      ieee->iw_mode == IW_MODE_MASTER)
   ieee80211_rx_assoc_rq(ieee, skb);
  break;

 case 134:
  if (ieee->softmac_features & IEEE_SOFTMAC_ASSOCIATE) {
   if (ieee->state == IEEE80211_ASSOCIATING_AUTHENTICATING
       && ieee->iw_mode == IW_MODE_INFRA) {
    IEEE80211_DEBUG_MGMT("Received auth response");
    ieee80211_check_auth_response(ieee, skb);
   } else if (ieee->iw_mode == IW_MODE_MASTER) {
    ieee80211_rx_auth_rq(ieee, skb);
   }
  }
  break;

 case 130:
  if ((ieee->softmac_features & IEEE_SOFTMAC_PROBERS) &&
      ((ieee->iw_mode == IW_MODE_ADHOC ||
        ieee->iw_mode == IW_MODE_MASTER) &&
       ieee->state == IEEE80211_LINKED)) {
   ieee80211_rx_probe_rq(ieee, skb);
  }
  break;

 case 132:
 case 133:



  if ((ieee->softmac_features & IEEE_SOFTMAC_ASSOCIATE) &&
      ieee->state == IEEE80211_LINKED &&
      ieee->iw_mode == IW_MODE_INFRA) {
   ieee->state = IEEE80211_ASSOCIATING;
   ieee->softmac_stats.reassoc++;

   notify_wx_assoc_event(ieee);

   RemovePeerTS(ieee, header->addr2);
   schedule_work(&ieee->associate_procedure_wq);
  }
  break;
 case 131:
  ieee80211_process_action(ieee, skb);
  break;
 default:
  return -1;
 }


 return 0;
}
