
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int tx_queue_stopped; int wl_lock; int hw; int tx_queue; int tx_work; } ;
struct sk_buff {int dummy; } ;
struct ieee80211_tx_control {int dummy; } ;
struct ieee80211_hw {struct wl1251* priv; } ;


 int DEBUG_TX ;
 scalar_t__ WL1251_TX_QUEUE_HIGH_WATERMARK ;
 int ieee80211_queue_work (int ,int *) ;
 int ieee80211_stop_queues (int ) ;
 scalar_t__ skb_queue_len (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wl1251_debug (int ,char*) ;

__attribute__((used)) static void wl1251_op_tx(struct ieee80211_hw *hw,
    struct ieee80211_tx_control *control,
    struct sk_buff *skb)
{
 struct wl1251 *wl = hw->priv;
 unsigned long flags;

 skb_queue_tail(&wl->tx_queue, skb);






 ieee80211_queue_work(wl->hw, &wl->tx_work);





 if (skb_queue_len(&wl->tx_queue) >= WL1251_TX_QUEUE_HIGH_WATERMARK) {
  wl1251_debug(DEBUG_TX, "op_tx: tx_queue full, stop queues");

  spin_lock_irqsave(&wl->wl_lock, flags);
  ieee80211_stop_queues(wl->hw);
  wl->tx_queue_stopped = 1;
  spin_unlock_irqrestore(&wl->wl_lock, flags);
 }
}
