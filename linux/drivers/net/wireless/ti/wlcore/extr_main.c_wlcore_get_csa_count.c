
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wl12xx_vif {int dummy; } ;
struct wl1271 {int dummy; } ;
struct ieee80211_channel_sw_ie {int count; } ;


 int EINVAL ;
 int WLAN_EID_CHANNEL_SWITCH ;
 int * wlcore_get_beacon_ie (struct wl1271*,struct wl12xx_vif*,int ) ;

__attribute__((used)) static int wlcore_get_csa_count(struct wl1271 *wl, struct wl12xx_vif *wlvif,
    u8 *csa_count)
{
 const u8 *ie;
 const struct ieee80211_channel_sw_ie *ie_csa;

 ie = wlcore_get_beacon_ie(wl, wlvif, WLAN_EID_CHANNEL_SWITCH);
 if (!ie)
  return -EINVAL;

 ie_csa = (struct ieee80211_channel_sw_ie *)&ie[2];
 *csa_count = ie_csa->count;

 return 0;
}
