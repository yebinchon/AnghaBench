
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wl12xx_vif {int dummy; } ;
struct wl1271 {int * queue_stop_reasons; int wl_lock; } ;


 int assert_spin_locked (int *) ;
 int wlcore_tx_get_mac80211_queue (struct wl12xx_vif*,int ) ;

bool wlcore_is_queue_stopped_locked(struct wl1271 *wl, struct wl12xx_vif *wlvif,
        u8 queue)
{
 int hwq = wlcore_tx_get_mac80211_queue(wlvif, queue);

 assert_spin_locked(&wl->wl_lock);
 return !!wl->queue_stop_reasons[hwq];
}
