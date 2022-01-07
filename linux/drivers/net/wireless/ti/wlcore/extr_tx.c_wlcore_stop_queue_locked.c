
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wl12xx_vif {int dummy; } ;
struct wl1271 {int hw; int * queue_stop_reasons; } ;
typedef enum wlcore_queue_stop_reason { ____Placeholder_wlcore_queue_stop_reason } wlcore_queue_stop_reason ;


 int WARN_ON_ONCE (int ) ;
 int ieee80211_stop_queue (int ,int) ;
 int test_and_set_bit (int,int *) ;
 int wlcore_tx_get_mac80211_queue (struct wl12xx_vif*,int ) ;

void wlcore_stop_queue_locked(struct wl1271 *wl, struct wl12xx_vif *wlvif,
         u8 queue, enum wlcore_queue_stop_reason reason)
{
 int hwq = wlcore_tx_get_mac80211_queue(wlvif, queue);
 bool stopped = !!wl->queue_stop_reasons[hwq];


 WARN_ON_ONCE(test_and_set_bit(reason, &wl->queue_stop_reasons[hwq]));

 if (stopped)
  return;

 ieee80211_stop_queue(wl->hw, hwq);
}
