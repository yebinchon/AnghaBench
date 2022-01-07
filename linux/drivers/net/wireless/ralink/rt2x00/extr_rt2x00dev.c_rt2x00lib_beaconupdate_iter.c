
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rt2x00_dev {int dummy; } ;
struct ieee80211_vif {scalar_t__ type; } ;


 scalar_t__ NL80211_IFTYPE_ADHOC ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_MESH_POINT ;
 scalar_t__ NL80211_IFTYPE_WDS ;
 int WARN_ON (int ) ;
 int rt2x00_is_usb (struct rt2x00_dev*) ;
 int rt2x00queue_update_beacon (struct rt2x00_dev*,struct ieee80211_vif*) ;

__attribute__((used)) static void rt2x00lib_beaconupdate_iter(void *data, u8 *mac,
     struct ieee80211_vif *vif)
{
 struct rt2x00_dev *rt2x00dev = data;

 if (vif->type != NL80211_IFTYPE_AP &&
     vif->type != NL80211_IFTYPE_ADHOC &&
     vif->type != NL80211_IFTYPE_MESH_POINT &&
     vif->type != NL80211_IFTYPE_WDS)
  return;






 WARN_ON(rt2x00_is_usb(rt2x00dev));
 rt2x00queue_update_beacon(rt2x00dev, vif);
}
