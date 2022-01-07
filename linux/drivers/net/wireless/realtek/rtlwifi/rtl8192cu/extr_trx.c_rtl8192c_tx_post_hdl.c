
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ieee80211_hw {int dummy; } ;



int rtl8192c_tx_post_hdl(struct ieee80211_hw *hw, struct urb *urb,
    struct sk_buff *skb)
{
 return 0;
}
