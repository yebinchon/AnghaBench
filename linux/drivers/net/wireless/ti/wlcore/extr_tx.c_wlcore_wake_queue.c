
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wl12xx_vif {int dummy; } ;
struct wl1271 {int wl_lock; int hw; scalar_t__* queue_stop_reasons; } ;
typedef enum wlcore_queue_stop_reason { ____Placeholder_wlcore_queue_stop_reason } wlcore_queue_stop_reason ;


 int WARN_ON_ONCE (int) ;
 int ieee80211_wake_queue (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_and_clear_bit (int,scalar_t__*) ;
 int wlcore_tx_get_mac80211_queue (struct wl12xx_vif*,int ) ;

void wlcore_wake_queue(struct wl1271 *wl, struct wl12xx_vif *wlvif, u8 queue,
         enum wlcore_queue_stop_reason reason)
{
 unsigned long flags;
 int hwq = wlcore_tx_get_mac80211_queue(wlvif, queue);

 spin_lock_irqsave(&wl->wl_lock, flags);


 WARN_ON_ONCE(!test_and_clear_bit(reason, &wl->queue_stop_reasons[hwq]));

 if (wl->queue_stop_reasons[hwq])
  goto out;

 ieee80211_wake_queue(wl->hw, hwq);

out:
 spin_unlock_irqrestore(&wl->wl_lock, flags);
}
