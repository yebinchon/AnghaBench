
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int _rtl_rx_process (struct ieee80211_hw*,struct sk_buff*) ;

void rtl8192cu_rx_hdl(struct ieee80211_hw *hw, struct sk_buff * skb)
{
 _rtl_rx_process(hw, skb);
}
