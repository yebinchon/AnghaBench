
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rtl_usb {int usb_rx_segregate_hdl; int rx_queue; int intf; } ;
struct ieee80211_hw {int dummy; } ;


 int IS_USB_STOP (struct rtl_usb*) ;
 int _rtl_rx_pre_process (struct ieee80211_hw*,struct sk_buff*) ;
 int _rtl_usb_rx_process_noagg (struct ieee80211_hw*,struct sk_buff*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ likely (int) ;
 int pr_err (char*) ;
 struct sk_buff* skb_dequeue (int *) ;
 scalar_t__ unlikely (int ) ;
 struct ieee80211_hw* usb_get_intfdata (int ) ;

__attribute__((used)) static void _rtl_rx_work(unsigned long param)
{
 struct rtl_usb *rtlusb = (struct rtl_usb *)param;
 struct ieee80211_hw *hw = usb_get_intfdata(rtlusb->intf);
 struct sk_buff *skb;

 while ((skb = skb_dequeue(&rtlusb->rx_queue))) {
  if (unlikely(IS_USB_STOP(rtlusb))) {
   dev_kfree_skb_any(skb);
   continue;
  }

  if (likely(!rtlusb->usb_rx_segregate_hdl)) {
   _rtl_usb_rx_process_noagg(hw, skb);
  } else {

   _rtl_rx_pre_process(hw, skb);
   pr_err("rx agg not supported\n");
  }
 }
}
