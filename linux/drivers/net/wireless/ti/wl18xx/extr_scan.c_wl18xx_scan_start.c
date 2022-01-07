
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_vif {int dummy; } ;
struct wl1271 {int dummy; } ;
struct cfg80211_scan_request {int dummy; } ;


 int wl18xx_scan_send (struct wl1271*,struct wl12xx_vif*,struct cfg80211_scan_request*) ;

int wl18xx_scan_start(struct wl1271 *wl, struct wl12xx_vif *wlvif,
        struct cfg80211_scan_request *req)
{
 return wl18xx_scan_send(wl, wlvif, req);
}
