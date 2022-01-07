
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct wl12xx_vif {scalar_t__* tx_queue_count; int * links_map; } ;
struct wl1271 {int wl_lock; int tx_work; int hw; int flags; int * tx_queue_count; TYPE_2__* links; } ;
struct sk_buff {int len; } ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_3__ {struct ieee80211_vif* vif; } ;
struct ieee80211_tx_info {TYPE_1__ control; } ;
struct ieee80211_tx_control {int sta; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
struct TYPE_4__ {int * tx_queue; } ;


 int DEBUG_TX ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 size_t WL1271_FLAG_FW_TX_BUSY ;
 size_t WL1271_FLAG_TX_PENDING ;
 scalar_t__ WL1271_TX_QUEUE_HIGH_WATERMARK ;
 size_t WL12XX_INVALID_LINK_ID ;
 int WLCORE_QUEUE_STOP_REASON_WATERMARK ;
 int ieee80211_free_txskb (struct ieee80211_hw*,struct sk_buff*) ;
 int ieee80211_queue_work (int ,int *) ;
 int skb_get_queue_mapping (struct sk_buff*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (size_t,int *) ;
 int wl1271_debug (int ,char*,...) ;
 int wl1271_tx_get_queue (int) ;
 size_t wl12xx_tx_get_hlid (struct wl1271*,struct wl12xx_vif*,struct sk_buff*,int ) ;
 struct wl12xx_vif* wl12xx_vif_to_data (struct ieee80211_vif*) ;
 int wlcore_is_queue_stopped_by_reason_locked (struct wl1271*,struct wl12xx_vif*,int,int ) ;
 scalar_t__ wlcore_is_queue_stopped_locked (struct wl1271*,struct wl12xx_vif*,int) ;
 int wlcore_stop_queue_locked (struct wl1271*,struct wl12xx_vif*,int,int ) ;

__attribute__((used)) static void wl1271_op_tx(struct ieee80211_hw *hw,
    struct ieee80211_tx_control *control,
    struct sk_buff *skb)
{
 struct wl1271 *wl = hw->priv;
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 struct ieee80211_vif *vif = info->control.vif;
 struct wl12xx_vif *wlvif = ((void*)0);
 unsigned long flags;
 int q, mapping;
 u8 hlid;

 if (!vif) {
  wl1271_debug(DEBUG_TX, "DROP skb with no vif");
  ieee80211_free_txskb(hw, skb);
  return;
 }

 wlvif = wl12xx_vif_to_data(vif);
 mapping = skb_get_queue_mapping(skb);
 q = wl1271_tx_get_queue(mapping);

 hlid = wl12xx_tx_get_hlid(wl, wlvif, skb, control->sta);

 spin_lock_irqsave(&wl->wl_lock, flags);






 if (hlid == WL12XX_INVALID_LINK_ID ||
     (!test_bit(hlid, wlvif->links_map)) ||
      (wlcore_is_queue_stopped_locked(wl, wlvif, q) &&
       !wlcore_is_queue_stopped_by_reason_locked(wl, wlvif, q,
   WLCORE_QUEUE_STOP_REASON_WATERMARK))) {
  wl1271_debug(DEBUG_TX, "DROP skb hlid %d q %d", hlid, q);
  ieee80211_free_txskb(hw, skb);
  goto out;
 }

 wl1271_debug(DEBUG_TX, "queue skb hlid %d q %d len %d",
       hlid, q, skb->len);
 skb_queue_tail(&wl->links[hlid].tx_queue[q], skb);

 wl->tx_queue_count[q]++;
 wlvif->tx_queue_count[q]++;





 if (wlvif->tx_queue_count[q] >= WL1271_TX_QUEUE_HIGH_WATERMARK &&
     !wlcore_is_queue_stopped_by_reason_locked(wl, wlvif, q,
     WLCORE_QUEUE_STOP_REASON_WATERMARK)) {
  wl1271_debug(DEBUG_TX, "op_tx: stopping queues for q %d", q);
  wlcore_stop_queue_locked(wl, wlvif, q,
      WLCORE_QUEUE_STOP_REASON_WATERMARK);
 }






 if (!test_bit(WL1271_FLAG_FW_TX_BUSY, &wl->flags) &&
     !test_bit(WL1271_FLAG_TX_PENDING, &wl->flags))
  ieee80211_queue_work(wl->hw, &wl->tx_work);

out:
 spin_unlock_irqrestore(&wl->wl_lock, flags);
}
