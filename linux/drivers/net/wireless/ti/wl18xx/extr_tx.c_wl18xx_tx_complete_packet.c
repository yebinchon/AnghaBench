
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct wl1271_tx_hw_descr {int hlid; } ;
struct TYPE_7__ {int retry_count; } ;
struct wl1271 {int num_tx_desc; int quirks; int netstack_work; int freezable_wq; int deferred_tx_queue; TYPE_2__ stats; struct sk_buff** tx_frames; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_9__ {TYPE_3__* hw_key; int vif; } ;
struct TYPE_6__ {int ack_signal; TYPE_5__* rates; } ;
struct ieee80211_tx_info {int flags; TYPE_4__ control; TYPE_1__ status; int band; } ;
struct TYPE_10__ {int count; } ;
struct TYPE_8__ {scalar_t__ cipher; } ;


 int BIT (int ) ;
 int DEBUG_TX ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_NO_ACK ;
 int IEEE80211_TX_STAT_ACK ;
 int WL1271_EXTRA_SPACE_TKIP ;
 int WL18XX_TX_STATUS_DESC_ID_MASK ;
 int WL18XX_TX_STATUS_STAT_BIT_IDX ;
 scalar_t__ WLAN_CIPHER_SUITE_TKIP ;
 int WLCORE_QUIRK_TKIP_HEADER_SPACE ;
 int ieee80211_get_hdrlen_from_skb (struct sk_buff*) ;
 int memmove (scalar_t__,scalar_t__,int) ;
 int queue_work (int ,int *) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 scalar_t__ unlikely (int) ;
 int wl1271_debug (int ,char*,int,struct sk_buff*,int) ;
 int wl1271_free_tx_id (struct wl1271*,int) ;
 int wl1271_warning (char*,int) ;
 scalar_t__ wl12xx_is_dummy_packet (struct wl1271*,struct sk_buff*) ;
 int wl18xx_get_last_tx_rate (struct wl1271*,int ,int ,TYPE_5__*,int ) ;

__attribute__((used)) static void wl18xx_tx_complete_packet(struct wl1271 *wl, u8 tx_stat_byte)
{
 struct ieee80211_tx_info *info;
 struct sk_buff *skb;
 int id = tx_stat_byte & WL18XX_TX_STATUS_DESC_ID_MASK;
 bool tx_success;
 struct wl1271_tx_hw_descr *tx_desc;


 if (unlikely(id >= wl->num_tx_desc || wl->tx_frames[id] == ((void*)0))) {
  wl1271_warning("illegal id in tx completion: %d", id);
  return;
 }


 tx_success = !(tx_stat_byte & BIT(WL18XX_TX_STATUS_STAT_BIT_IDX));

 skb = wl->tx_frames[id];
 info = IEEE80211_SKB_CB(skb);
 tx_desc = (struct wl1271_tx_hw_descr *)skb->data;

 if (wl12xx_is_dummy_packet(wl, skb)) {
  wl1271_free_tx_id(wl, id);
  return;
 }


 if (tx_success && !(info->flags & IEEE80211_TX_CTL_NO_ACK))
  info->flags |= IEEE80211_TX_STAT_ACK;




 wl18xx_get_last_tx_rate(wl, info->control.vif,
    info->band,
    &info->status.rates[0],
    tx_desc->hlid);

 info->status.rates[0].count = 1;
 info->status.ack_signal = -1;

 if (!tx_success)
  wl->stats.retry_count++;







 skb_pull(skb, sizeof(struct wl1271_tx_hw_descr));


 if ((wl->quirks & WLCORE_QUIRK_TKIP_HEADER_SPACE) &&
     info->control.hw_key &&
     info->control.hw_key->cipher == WLAN_CIPHER_SUITE_TKIP) {
  int hdrlen = ieee80211_get_hdrlen_from_skb(skb);
  memmove(skb->data + WL1271_EXTRA_SPACE_TKIP, skb->data, hdrlen);
  skb_pull(skb, WL1271_EXTRA_SPACE_TKIP);
 }

 wl1271_debug(DEBUG_TX, "tx status id %u skb 0x%p success %d",
       id, skb, tx_success);


 skb_queue_tail(&wl->deferred_tx_queue, skb);
 queue_work(wl->freezable_wq, &wl->netstack_work);
 wl1271_free_tx_id(wl, id);
}
