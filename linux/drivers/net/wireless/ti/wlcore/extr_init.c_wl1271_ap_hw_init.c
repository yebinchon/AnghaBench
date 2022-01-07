
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_vif {int dummy; } ;
struct wl1271 {int dummy; } ;


 int wl1271_init_ap_rates (struct wl1271*,struct wl12xx_vif*) ;
 int wlcore_hw_ap_sleep (struct wl1271*) ;

__attribute__((used)) static int wl1271_ap_hw_init(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
 int ret;

 ret = wl1271_init_ap_rates(wl, wlvif);
 if (ret < 0)
  return ret;


 ret = wlcore_hw_ap_sleep(wl);
 if (ret < 0)
  return ret;

 return 0;
}
