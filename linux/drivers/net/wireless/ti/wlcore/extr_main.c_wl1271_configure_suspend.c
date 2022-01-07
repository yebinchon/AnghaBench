
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl12xx_vif {scalar_t__ bss_type; } ;
struct wl1271 {int dummy; } ;
struct cfg80211_wowlan {int dummy; } ;


 scalar_t__ BSS_TYPE_AP_BSS ;
 scalar_t__ BSS_TYPE_STA_BSS ;
 int wl1271_configure_suspend_ap (struct wl1271*,struct wl12xx_vif*,struct cfg80211_wowlan*) ;
 int wl1271_configure_suspend_sta (struct wl1271*,struct wl12xx_vif*,struct cfg80211_wowlan*) ;

__attribute__((used)) static int wl1271_configure_suspend(struct wl1271 *wl,
        struct wl12xx_vif *wlvif,
        struct cfg80211_wowlan *wow)
{
 if (wlvif->bss_type == BSS_TYPE_STA_BSS)
  return wl1271_configure_suspend_sta(wl, wlvif, wow);
 if (wlvif->bss_type == BSS_TYPE_AP_BSS)
  return wl1271_configure_suspend_ap(wl, wlvif, wow);
 return 0;
}
