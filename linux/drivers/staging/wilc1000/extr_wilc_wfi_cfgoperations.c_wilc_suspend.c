
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct wilc {int suspend_event; } ;
struct cfg80211_wowlan {int dummy; } ;


 scalar_t__ wilc_wlan_get_num_conn_ifcs (struct wilc*) ;
 struct wilc* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int wilc_suspend(struct wiphy *wiphy, struct cfg80211_wowlan *wow)
{
 struct wilc *wl = wiphy_priv(wiphy);

 if (!wow && wilc_wlan_get_num_conn_ifcs(wl))
  wl->suspend_event = 1;
 else
  wl->suspend_event = 0;

 return 0;
}
