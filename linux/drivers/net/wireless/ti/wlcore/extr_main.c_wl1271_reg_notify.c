
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int dfs_region; } ;
struct wiphy {int dummy; } ;
struct regulatory_request {int dfs_region; } ;
struct ieee80211_hw {struct wl1271* priv; } ;


 struct ieee80211_hw* wiphy_to_ieee80211_hw (struct wiphy*) ;
 int wlcore_regdomain_config (struct wl1271*) ;

__attribute__((used)) static void wl1271_reg_notify(struct wiphy *wiphy,
         struct regulatory_request *request)
{
 struct ieee80211_hw *hw = wiphy_to_ieee80211_hw(wiphy);
 struct wl1271 *wl = hw->priv;


 if (request)
  wl->dfs_region = request->dfs_region;

 wlcore_regdomain_config(wl);
}
