
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef int __le16 ;
typedef int __be16 ;


 scalar_t__ ETH_P_PAE ;
 scalar_t__ be16_to_cpup (int *) ;
 scalar_t__ ieee80211_is_nullfunc (int ) ;
 int rtl_get_fc (struct sk_buff*) ;
 int * rtl_skb_ether_type_ptr (struct ieee80211_hw*,struct sk_buff*,int) ;

bool rtl_is_tx_report_skb(struct ieee80211_hw *hw, struct sk_buff *skb)
{
 u16 ether_type;
 const u8 *ether_type_ptr;
 __le16 fc = rtl_get_fc(skb);

 ether_type_ptr = rtl_skb_ether_type_ptr(hw, skb, 1);
 ether_type = be16_to_cpup((__be16 *)ether_type_ptr);

 if (ether_type == ETH_P_PAE || ieee80211_is_nullfunc(fc))
  return 1;

 return 0;
}
