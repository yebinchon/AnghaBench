
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; int data; } ;
struct ieee80211_rx_status {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef int rx_status ;


 int IEEE80211_SKB_RXCB (struct sk_buff*) ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int ieee80211_rx_irqsafe (struct ieee80211_hw*,struct sk_buff*) ;
 scalar_t__ likely (struct sk_buff*) ;
 int memcpy (int ,struct ieee80211_rx_status*,int) ;
 int rtl_action_proc (struct ieee80211_hw*,struct sk_buff*,int) ;
 int skb_put_data (struct sk_buff*,int ,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void _rtl_pci_rx_to_mac80211(struct ieee80211_hw *hw,
        struct sk_buff *skb,
        struct ieee80211_rx_status rx_status)
{
 if (unlikely(!rtl_action_proc(hw, skb, 0))) {
  dev_kfree_skb_any(skb);
 } else {
  struct sk_buff *uskb = ((void*)0);

  uskb = dev_alloc_skb(skb->len + 128);
  if (likely(uskb)) {
   memcpy(IEEE80211_SKB_RXCB(uskb), &rx_status,
          sizeof(rx_status));
   skb_put_data(uskb, skb->data, skb->len);
   dev_kfree_skb_any(skb);
   ieee80211_rx_irqsafe(hw, uskb);
  } else {
   ieee80211_rx_irqsafe(hw, skb);
  }
 }
}
