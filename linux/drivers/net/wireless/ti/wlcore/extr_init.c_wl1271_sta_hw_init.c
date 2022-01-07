
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_vif {int dummy; } ;
struct wl1271 {int dummy; } ;


 int wl1271_acx_fm_coex (struct wl1271*) ;
 int wl1271_acx_sta_rate_policies (struct wl1271*,struct wl12xx_vif*) ;
 int wl12xx_acx_config_ps (struct wl1271*,struct wl12xx_vif*) ;

int wl1271_sta_hw_init(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
 int ret;


 ret = wl12xx_acx_config_ps(wl, wlvif);
 if (ret < 0)
  return ret;


 ret = wl1271_acx_fm_coex(wl);
 if (ret < 0)
  return ret;

 ret = wl1271_acx_sta_rate_policies(wl, wlvif);
 if (ret < 0)
  return ret;

 return 0;
}
