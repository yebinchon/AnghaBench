
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_vif {int dummy; } ;
struct wl1271 {int dummy; } ;


 int SCAN_TYPE_SEARCH ;
 int __wl18xx_scan_stop (struct wl1271*,struct wl12xx_vif*,int ) ;

int wl18xx_scan_stop(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
 return __wl18xx_scan_stop(wl, wlvif, SCAN_TYPE_SEARCH);
}
