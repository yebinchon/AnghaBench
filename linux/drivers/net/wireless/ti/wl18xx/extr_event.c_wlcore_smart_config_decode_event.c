
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct wl1271 {TYPE_1__* hw; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int wiphy; } ;


 int DEBUG_EVENT ;
 int EMSGSIZE ;
 int GFP_KERNEL ;
 int WLCORE_VENDOR_ATTR_PSK ;
 int WLCORE_VENDOR_ATTR_SSID ;
 int WLCORE_VENDOR_EVENT_SC_DECODE ;
 int cfg80211_vendor_event (struct sk_buff*,int ) ;
 struct sk_buff* cfg80211_vendor_event_alloc (int ,int *,scalar_t__,int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ nla_put (struct sk_buff*,int ,scalar_t__,scalar_t__*) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_dump_ascii (int ,char*,scalar_t__*,scalar_t__) ;

__attribute__((used)) static int wlcore_smart_config_decode_event(struct wl1271 *wl,
         u8 ssid_len, u8 *ssid,
         u8 pwd_len, u8 *pwd)
{
 struct sk_buff *skb;

 wl1271_debug(DEBUG_EVENT, "SMART_CONFIG_DECODE_EVENT_ID");
 wl1271_dump_ascii(DEBUG_EVENT, "SSID:", ssid, ssid_len);

 skb = cfg80211_vendor_event_alloc(wl->hw->wiphy, ((void*)0),
       ssid_len + pwd_len + 20,
       WLCORE_VENDOR_EVENT_SC_DECODE,
       GFP_KERNEL);

 if (nla_put(skb, WLCORE_VENDOR_ATTR_SSID, ssid_len, ssid) ||
     nla_put(skb, WLCORE_VENDOR_ATTR_PSK, pwd_len, pwd)) {
  kfree_skb(skb);
  return -EMSGSIZE;
 }
 cfg80211_vendor_event(skb, GFP_KERNEL);
 return 0;
}
