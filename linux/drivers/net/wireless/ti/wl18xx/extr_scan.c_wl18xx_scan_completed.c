
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl12xx_vif {int dummy; } ;
struct TYPE_2__ {int failed; } ;
struct wl1271 {int scan_complete_work; int hw; TYPE_1__ scan; } ;


 int cancel_delayed_work (int *) ;
 int ieee80211_queue_delayed_work (int ,int *,int ) ;
 int msecs_to_jiffies (int ) ;

void wl18xx_scan_completed(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
 wl->scan.failed = 0;
 cancel_delayed_work(&wl->scan_complete_work);
 ieee80211_queue_delayed_work(wl->hw, &wl->scan_complete_work,
         msecs_to_jiffies(0));
}
