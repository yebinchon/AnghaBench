
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct wsm_rx {scalar_t__ status; int channel_number; int rx_rate; int flags; scalar_t__ rcpi_rssi; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_tim_ie {scalar_t__ dtim_period; } ;
struct ieee80211_rx_status {int flag; int rate_idx; scalar_t__ mactime; scalar_t__ antenna; scalar_t__ signal; int encoding; int band; int freq; } ;
struct ieee80211_pspoll {int dummy; } ;
struct TYPE_7__ {int * variable; } ;
struct TYPE_10__ {scalar_t__ category; } ;
struct TYPE_11__ {TYPE_1__ beacon; TYPE_4__ action; } ;
struct ieee80211_mgmt {TYPE_5__ u; } ;
struct ieee80211_hdr {int frame_control; } ;
struct cw1200_link_entry {scalar_t__ status; int rx_queue; int timestamp; } ;
struct cw1200_common {scalar_t__ mode; int action_linkid; scalar_t__ join_dtim_period; int disable_beacon_filter; TYPE_6__* hw; int ps_state_lock; int pm_state; int update_filtering_work; int workqueue; TYPE_3__* vif; int set_beacon_wakeup_period_work; int linkid_reset_work; scalar_t__* action_frame_sa; struct cw1200_link_entry* link_id_db; } ;
typedef scalar_t__ s8 ;
struct TYPE_12__ {int wiphy; } ;
struct TYPE_8__ {scalar_t__ ibss_joined; scalar_t__ assoc; int bssid; } ;
struct TYPE_9__ {TYPE_2__ bss_conf; int p2p; } ;


 scalar_t__ CW1200_LINK_SOFT ;
 int CW1200_MAX_STA_IN_AP_MODE ;
 int ETH_ALEN ;
 int HZ ;
 struct ieee80211_rx_status* IEEE80211_SKB_RXCB (struct sk_buff*) ;
 int NL80211_BAND_2GHZ ;
 int NL80211_BAND_5GHZ ;
 scalar_t__ NL80211_IFTYPE_UNSPECIFIED ;
 int RX_ENC_HT ;
 int RX_FLAG_DECRYPTED ;
 int RX_FLAG_IV_STRIPPED ;
 int RX_FLAG_MMIC_ERROR ;
 int RX_FLAG_MMIC_STRIPPED ;
 int WARN_ON (int ) ;
 scalar_t__ WLAN_CATEGORY_PUBLIC ;
 int WLAN_EID_TIM ;
 int WSM_RX_STATUS_ADDRESS1 ;

 int WSM_RX_STATUS_AGGREGATE ;
 int WSM_RX_STATUS_ENCRYPTION (int) ;

 int WSM_RX_STATUS_TSF_INCLUDED ;


 scalar_t__ WSM_STATUS_MICFAILURE ;
 scalar_t__ WSM_STATUS_NO_KEY_FOUND ;
 int * cfg80211_find_ie (int ,int *,size_t) ;
 int cw1200_debug_rxed (struct cw1200_common*) ;
 int cw1200_debug_rxed_agg (struct cw1200_common*) ;
 scalar_t__ cw1200_handle_action_rx (struct cw1200_common*,struct sk_buff*) ;
 scalar_t__ cw1200_handle_pspoll (struct cw1200_common*,struct sk_buff*) ;
 int cw1200_pm_stay_awake (int *,unsigned long) ;
 scalar_t__ ether_addr_equal (scalar_t__,int ) ;
 int ieee80211_channel_to_frequency (int,int ) ;
 scalar_t__ ieee80211_get_SA (struct ieee80211_hdr*) ;
 size_t ieee80211_hdrlen (int ) ;
 scalar_t__ ieee80211_is_action (int ) ;
 scalar_t__ ieee80211_is_auth (int ) ;
 scalar_t__ ieee80211_is_beacon (int ) ;
 scalar_t__ ieee80211_is_data (int ) ;
 scalar_t__ ieee80211_is_deauth (int ) ;
 scalar_t__ ieee80211_is_pspoll (int ) ;
 int ieee80211_rx_irqsafe (TYPE_6__*,struct sk_buff*) ;
 int jiffies ;
 scalar_t__ le64_to_cpu (scalar_t__) ;
 int memcpy (scalar_t__*,scalar_t__,int) ;
 int memmove (int ,scalar_t__,size_t) ;
 int pr_debug (char*,...) ;
 int pr_warn (char*,int) ;
 int queue_work (int ,int *) ;
 int schedule_work (int *) ;
 int skb_pull (struct sk_buff*,size_t) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int skb_trim (struct sk_buff*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wiphy_warn (int ,char*) ;
 int work_pending (int *) ;

void cw1200_rx_cb(struct cw1200_common *priv,
    struct wsm_rx *arg,
    int link_id,
    struct sk_buff **skb_p)
{
 struct sk_buff *skb = *skb_p;
 struct ieee80211_rx_status *hdr = IEEE80211_SKB_RXCB(skb);
 struct ieee80211_hdr *frame = (struct ieee80211_hdr *)skb->data;
 struct ieee80211_mgmt *mgmt = (struct ieee80211_mgmt *)skb->data;
 struct cw1200_link_entry *entry = ((void*)0);
 unsigned long grace_period;

 bool early_data = 0;
 bool p2p = priv->vif && priv->vif->p2p;
 size_t hdrlen;
 hdr->flag = 0;

 if (priv->mode == NL80211_IFTYPE_UNSPECIFIED) {

  goto drop;
 }

 if (link_id && link_id <= CW1200_MAX_STA_IN_AP_MODE) {
  entry = &priv->link_id_db[link_id - 1];
  if (entry->status == CW1200_LINK_SOFT &&
      ieee80211_is_data(frame->frame_control))
   early_data = 1;
  entry->timestamp = jiffies;
 } else if (p2p &&
     ieee80211_is_action(frame->frame_control) &&
     (mgmt->u.action.category == WLAN_CATEGORY_PUBLIC)) {
  pr_debug("[RX] Going to MAP&RESET link ID\n");
  WARN_ON(work_pending(&priv->linkid_reset_work));
  memcpy(&priv->action_frame_sa[0],
         ieee80211_get_SA(frame), ETH_ALEN);
  priv->action_linkid = 0;
  schedule_work(&priv->linkid_reset_work);
 }

 if (link_id && p2p &&
     ieee80211_is_action(frame->frame_control) &&
     (mgmt->u.action.category == WLAN_CATEGORY_PUBLIC)) {



  WARN_ON(work_pending(&priv->linkid_reset_work));
  memcpy(&priv->action_frame_sa[0],
         ieee80211_get_SA(frame), ETH_ALEN);
  priv->action_linkid = link_id;
  schedule_work(&priv->linkid_reset_work);
 }
 if (arg->status) {
  if (arg->status == WSM_STATUS_MICFAILURE) {
   pr_debug("[RX] MIC failure.\n");
   hdr->flag |= RX_FLAG_MMIC_ERROR;
  } else if (arg->status == WSM_STATUS_NO_KEY_FOUND) {
   pr_debug("[RX] No key found.\n");
   goto drop;
  } else {
   pr_debug("[RX] Receive failure: %d.\n",
     arg->status);
   goto drop;
  }
 }

 if (skb->len < sizeof(struct ieee80211_pspoll)) {
  wiphy_warn(priv->hw->wiphy, "Malformed SDU rx'ed. Size is lesser than IEEE header.\n");
  goto drop;
 }

 if (ieee80211_is_pspoll(frame->frame_control))
  if (cw1200_handle_pspoll(priv, skb))
   goto drop;

 hdr->band = ((arg->channel_number & 0xff00) ||
       (arg->channel_number > 14)) ?
   NL80211_BAND_5GHZ : NL80211_BAND_2GHZ;
 hdr->freq = ieee80211_channel_to_frequency(
   arg->channel_number,
   hdr->band);

 if (arg->rx_rate >= 14) {
  hdr->encoding = RX_ENC_HT;
  hdr->rate_idx = arg->rx_rate - 14;
 } else if (arg->rx_rate >= 4) {
  hdr->rate_idx = arg->rx_rate - 2;
 } else {
  hdr->rate_idx = arg->rx_rate;
 }

 hdr->signal = (s8)arg->rcpi_rssi;
 hdr->antenna = 0;

 hdrlen = ieee80211_hdrlen(frame->frame_control);

 if (WSM_RX_STATUS_ENCRYPTION(arg->flags)) {
  size_t iv_len = 0, icv_len = 0;

  hdr->flag |= RX_FLAG_DECRYPTED | RX_FLAG_IV_STRIPPED;




  switch (WSM_RX_STATUS_ENCRYPTION(arg->flags)) {
  case 128:
   iv_len = 4 ;
   icv_len = 4 ;
   break;
  case 130:
   iv_len = 8 ;
   icv_len = 4
    + 8 ;
   hdr->flag |= RX_FLAG_MMIC_STRIPPED;
   break;
  case 131:
   iv_len = 8 ;
   icv_len = 8 ;
   break;
  case 129:
   iv_len = 18 ;
   icv_len = 16 ;
   break;
  default:
   pr_warn("Unknown encryption type %d\n",
    WSM_RX_STATUS_ENCRYPTION(arg->flags));
   goto drop;
  }


  if (arg->status == WSM_STATUS_MICFAILURE)
   icv_len = 0;

  if (skb->len < hdrlen + iv_len + icv_len) {
   wiphy_warn(priv->hw->wiphy, "Malformed SDU rx'ed. Size is lesser than crypto headers.\n");
   goto drop;
  }


  skb_trim(skb, skb->len - icv_len);
  memmove(skb->data + iv_len, skb->data, hdrlen);
  skb_pull(skb, iv_len);
 }


 if (arg->flags & WSM_RX_STATUS_TSF_INCLUDED) {
  memcpy(&hdr->mactime, skb->data + skb->len - 8, 8);
  hdr->mactime = le64_to_cpu(hdr->mactime);
  if (skb->len >= 8)
   skb_trim(skb, skb->len - 8);
 } else {
  hdr->mactime = 0;
 }

 cw1200_debug_rxed(priv);
 if (arg->flags & WSM_RX_STATUS_AGGREGATE)
  cw1200_debug_rxed_agg(priv);

 if (ieee80211_is_action(frame->frame_control) &&
     (arg->flags & WSM_RX_STATUS_ADDRESS1)) {
  if (cw1200_handle_action_rx(priv, skb))
   return;
 } else if (ieee80211_is_beacon(frame->frame_control) &&
     !arg->status && priv->vif &&
     ether_addr_equal(ieee80211_get_SA(frame), priv->vif->bss_conf.bssid)) {
  const u8 *tim_ie;
  u8 *ies = ((struct ieee80211_mgmt *)
     (skb->data))->u.beacon.variable;
  size_t ies_len = skb->len - (ies - (u8 *)(skb->data));

  tim_ie = cfg80211_find_ie(WLAN_EID_TIM, ies, ies_len);
  if (tim_ie) {
   struct ieee80211_tim_ie *tim =
    (struct ieee80211_tim_ie *)&tim_ie[2];

   if (priv->join_dtim_period != tim->dtim_period) {
    priv->join_dtim_period = tim->dtim_period;
    queue_work(priv->workqueue,
        &priv->set_beacon_wakeup_period_work);
   }
  }


  if (priv->disable_beacon_filter &&
      (priv->vif->bss_conf.assoc ||
       priv->vif->bss_conf.ibss_joined)) {
   priv->disable_beacon_filter = 0;
   queue_work(priv->workqueue,
       &priv->update_filtering_work);
  }
 }





 if (ieee80211_is_auth(frame->frame_control))
  grace_period = 5 * HZ;
 else if (ieee80211_is_deauth(frame->frame_control))
  grace_period = 5 * HZ;
 else
  grace_period = 1 * HZ;
 cw1200_pm_stay_awake(&priv->pm_state, grace_period);

 if (early_data) {
  spin_lock_bh(&priv->ps_state_lock);

  if (entry->status == CW1200_LINK_SOFT)
   skb_queue_tail(&entry->rx_queue, skb);
  else
   ieee80211_rx_irqsafe(priv->hw, skb);
  spin_unlock_bh(&priv->ps_state_lock);
 } else {
  ieee80211_rx_irqsafe(priv->hw, skb);
 }
 *skb_p = ((void*)0);

 return;

drop:

 return;
}
