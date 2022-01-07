
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wl1271 {TYPE_1__* hw; } ;
struct sk_buff {int dummy; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_2__ {int wiphy; } ;


 int DEBUG_EVENT ;
 int EMSGSIZE ;
 int GFP_KERNEL ;
 int NL80211_BAND_2GHZ ;
 int NL80211_BAND_5GHZ ;
 int WLCORE_BAND_5GHZ ;
 int WLCORE_VENDOR_ATTR_FREQ ;
 int WLCORE_VENDOR_EVENT_SC_SYNC ;
 int cfg80211_vendor_event (struct sk_buff*,int ) ;
 struct sk_buff* cfg80211_vendor_event_alloc (int ,int *,int,int ,int ) ;
 int ieee80211_channel_to_frequency (int ,int) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int) ;
 int wl1271_debug (int ,char*,int,int ,int ) ;

__attribute__((used)) static int wlcore_smart_config_sync_event(struct wl1271 *wl, u8 sync_channel,
       u8 sync_band)
{
 struct sk_buff *skb;
 enum nl80211_band band;
 int freq;

 if (sync_band == WLCORE_BAND_5GHZ)
  band = NL80211_BAND_5GHZ;
 else
  band = NL80211_BAND_2GHZ;

 freq = ieee80211_channel_to_frequency(sync_channel, band);

 wl1271_debug(DEBUG_EVENT,
       "SMART_CONFIG_SYNC_EVENT_ID, freq: %d (chan: %d band %d)",
       freq, sync_channel, sync_band);
 skb = cfg80211_vendor_event_alloc(wl->hw->wiphy, ((void*)0), 20,
       WLCORE_VENDOR_EVENT_SC_SYNC,
       GFP_KERNEL);

 if (nla_put_u32(skb, WLCORE_VENDOR_ATTR_FREQ, freq)) {
  kfree_skb(skb);
  return -EMSGSIZE;
 }
 cfg80211_vendor_event(skb, GFP_KERNEL);
 return 0;
}
