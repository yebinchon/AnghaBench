
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_vif {int rx_streaming_disable_work; struct wl1271* wl; } ;
struct wl1271 {int hw; } ;
struct timer_list {int dummy; } ;


 struct wl12xx_vif* from_timer (int ,struct timer_list*,int ) ;
 int ieee80211_queue_work (int ,int *) ;
 int rx_streaming_timer ;
 struct wl12xx_vif* wlvif ;

__attribute__((used)) static void wl1271_rx_streaming_timer(struct timer_list *t)
{
 struct wl12xx_vif *wlvif = from_timer(wlvif, t, rx_streaming_timer);
 struct wl1271 *wl = wlvif->wl;
 ieee80211_queue_work(wl->hw, &wlvif->rx_streaming_disable_work);
}
