
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sta_hlid_map; } ;
struct wl12xx_vif {TYPE_1__ ap; } ;
struct wl1271_station {int hlid; } ;
struct wl1271 {int dummy; } ;
struct ieee80211_sta {scalar_t__ drv_priv; scalar_t__ aid; } ;


 int DEBUG_MAC80211 ;
 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int test_bit (int,int ) ;
 int wl1271_debug (int ,char*,int) ;
 int wl1271_free_sta (struct wl1271*,struct wl12xx_vif*,int) ;
 int wl12xx_cmd_remove_peer (struct wl1271*,struct wl12xx_vif*,int) ;

__attribute__((used)) static int wl12xx_sta_remove(struct wl1271 *wl,
        struct wl12xx_vif *wlvif,
        struct ieee80211_sta *sta)
{
 struct wl1271_station *wl_sta;
 int ret = 0, id;

 wl1271_debug(DEBUG_MAC80211, "mac80211 remove sta %d", (int)sta->aid);

 wl_sta = (struct wl1271_station *)sta->drv_priv;
 id = wl_sta->hlid;
 if (WARN_ON(!test_bit(id, wlvif->ap.sta_hlid_map)))
  return -EINVAL;

 ret = wl12xx_cmd_remove_peer(wl, wlvif, wl_sta->hlid);
 if (ret < 0)
  return ret;

 wl1271_free_sta(wl, wlvif, wl_sta->hlid);
 return ret;
}
