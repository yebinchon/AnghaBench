
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {scalar_t__ context; } ;
struct sk_buff {int dummy; } ;
struct rtl_usb {int tx_submitted; } ;
struct ieee80211_hw {int dummy; } ;


 int GFP_ATOMIC ;
 int kfree_skb (struct sk_buff*) ;
 int pr_err (char*) ;
 struct rtl_usb* rtl_usbdev (int ) ;
 int rtl_usbpriv (struct ieee80211_hw*) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_free_urb (struct urb*) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static void _rtl_submit_tx_urb(struct ieee80211_hw *hw, struct urb *_urb)
{
 int err;
 struct rtl_usb *rtlusb = rtl_usbdev(rtl_usbpriv(hw));

 usb_anchor_urb(_urb, &rtlusb->tx_submitted);
 err = usb_submit_urb(_urb, GFP_ATOMIC);
 if (err < 0) {
  struct sk_buff *skb;

  pr_err("Failed to submit urb\n");
  usb_unanchor_urb(_urb);
  skb = (struct sk_buff *)_urb->context;
  kfree_skb(skb);
 }
 usb_free_urb(_urb);
}
