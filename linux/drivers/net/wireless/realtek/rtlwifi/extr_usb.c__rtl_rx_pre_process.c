
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct rtl_usb {int (* usb_rx_segregate_hdl ) (struct ieee80211_hw*,struct sk_buff*,struct sk_buff_head*) ;} ;
struct ieee80211_hw {int dummy; } ;


 int WARN_ON (int ) ;
 int _rtl_usb_rx_process_agg (struct ieee80211_hw*,struct sk_buff*) ;
 int ieee80211_rx (struct ieee80211_hw*,struct sk_buff*) ;
 struct rtl_usb* rtl_usbdev (int ) ;
 int rtl_usbpriv (struct ieee80211_hw*) ;
 struct sk_buff* skb_dequeue (struct sk_buff_head*) ;
 int skb_queue_empty (struct sk_buff_head*) ;
 int skb_queue_head_init (struct sk_buff_head*) ;
 int stub1 (struct ieee80211_hw*,struct sk_buff*,struct sk_buff_head*) ;

__attribute__((used)) static void _rtl_rx_pre_process(struct ieee80211_hw *hw, struct sk_buff *skb)
{
 struct sk_buff *_skb;
 struct sk_buff_head rx_queue;
 struct rtl_usb *rtlusb = rtl_usbdev(rtl_usbpriv(hw));

 skb_queue_head_init(&rx_queue);
 if (rtlusb->usb_rx_segregate_hdl)
  rtlusb->usb_rx_segregate_hdl(hw, skb, &rx_queue);
 WARN_ON(skb_queue_empty(&rx_queue));
 while (!skb_queue_empty(&rx_queue)) {
  _skb = skb_dequeue(&rx_queue);
  _rtl_usb_rx_process_agg(hw, _skb);
  ieee80211_rx(hw, _skb);
 }
}
