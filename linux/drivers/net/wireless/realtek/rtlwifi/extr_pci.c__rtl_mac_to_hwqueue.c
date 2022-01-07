
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct sk_buff {int dummy; } ;
struct rtl_hal {scalar_t__ hw_type; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int addr1; } ;
typedef int __le16 ;


 size_t BEACON_QUEUE ;
 scalar_t__ HARDWARE_TYPE_RTL8192SE ;
 scalar_t__ HARDWARE_TYPE_RTL8822BE ;
 size_t HIGH_QUEUE ;
 size_t MGNT_QUEUE ;
 size_t* ac_to_hwq ;
 int ieee80211_is_beacon (int ) ;
 scalar_t__ ieee80211_is_ctl (int ) ;
 scalar_t__ ieee80211_is_mgmt (int ) ;
 scalar_t__ ieee80211_is_nullfunc (int ) ;
 scalar_t__ is_broadcast_ether_addr (int ) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 int rtl_get_fc (struct sk_buff*) ;
 struct ieee80211_hdr* rtl_get_hdr (struct sk_buff*) ;
 struct rtl_hal* rtl_hal (int ) ;
 int rtl_priv (struct ieee80211_hw*) ;
 size_t skb_get_queue_mapping (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static u8 _rtl_mac_to_hwqueue(struct ieee80211_hw *hw, struct sk_buff *skb)
{
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 __le16 fc = rtl_get_fc(skb);
 u8 queue_index = skb_get_queue_mapping(skb);
 struct ieee80211_hdr *hdr;

 if (unlikely(ieee80211_is_beacon(fc)))
  return BEACON_QUEUE;
 if (ieee80211_is_mgmt(fc) || ieee80211_is_ctl(fc))
  return MGNT_QUEUE;
 if (rtlhal->hw_type == HARDWARE_TYPE_RTL8192SE)
  if (ieee80211_is_nullfunc(fc))
   return HIGH_QUEUE;
 if (rtlhal->hw_type == HARDWARE_TYPE_RTL8822BE) {
  hdr = rtl_get_hdr(skb);

  if (is_multicast_ether_addr(hdr->addr1) ||
      is_broadcast_ether_addr(hdr->addr1))
   return HIGH_QUEUE;
 }

 return ac_to_hwq[queue_index];
}
