
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 struct sk_buff* skb_dequeue (struct sk_buff_head*) ;

__attribute__((used)) static struct sk_buff *_none_usb_tx_aggregate_hdl(struct ieee80211_hw *hw,
        struct sk_buff_head *list)
{
 return skb_dequeue(list);
}
