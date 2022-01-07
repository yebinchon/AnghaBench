
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int mac80211_registered; int hw; scalar_t__ plt; } ;


 int ieee80211_unregister_hw (int ) ;
 int wl1271_plt_stop (struct wl1271*) ;

__attribute__((used)) static void wl1271_unregister_hw(struct wl1271 *wl)
{
 if (wl->plt)
  wl1271_plt_stop(wl);

 ieee80211_unregister_hw(wl->hw);
 wl->mac80211_registered = 0;

}
