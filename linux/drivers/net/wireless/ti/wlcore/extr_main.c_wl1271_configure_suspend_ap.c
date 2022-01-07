
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_vif {int flags; } ;
struct wl1271 {int dummy; } ;
struct cfg80211_wowlan {int dummy; } ;


 int WLVIF_FLAG_AP_STARTED ;
 int test_bit (int ,int *) ;
 int wl1271_acx_beacon_filter_opt (struct wl1271*,struct wl12xx_vif*,int) ;
 int wl1271_configure_wowlan (struct wl1271*,struct cfg80211_wowlan*) ;

__attribute__((used)) static int wl1271_configure_suspend_ap(struct wl1271 *wl,
     struct wl12xx_vif *wlvif,
     struct cfg80211_wowlan *wow)
{
 int ret = 0;

 if (!test_bit(WLVIF_FLAG_AP_STARTED, &wlvif->flags))
  goto out;

 ret = wl1271_acx_beacon_filter_opt(wl, wlvif, 1);
 if (ret < 0)
  goto out;

 ret = wl1271_configure_wowlan(wl, wow);
 if (ret < 0)
  goto out;

out:
 return ret;

}
