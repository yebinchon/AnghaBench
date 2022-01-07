
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct urb {int transfer_flags; } ;
struct sk_buff {int len; int data; } ;
struct rtl_usb {int udev; } ;
struct ieee80211_hw {int dummy; } ;


 int GFP_ATOMIC ;
 int URB_ZERO_PACKET ;
 int WARN_ON (int) ;
 int _rtl_install_trx_info (struct rtl_usb*,struct sk_buff*,int ) ;
 int _rtl_tx_complete ;
 int kfree_skb (struct sk_buff*) ;
 struct rtl_usb* rtl_usbdev (int ) ;
 int rtl_usbpriv (struct ieee80211_hw*) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,int ,int ,int ,struct sk_buff*) ;
 int usb_sndbulkpipe (int ,int ) ;

__attribute__((used)) static struct urb *_rtl_usb_tx_urb_setup(struct ieee80211_hw *hw,
    struct sk_buff *skb, u32 ep_num)
{
 struct rtl_usb *rtlusb = rtl_usbdev(rtl_usbpriv(hw));
 struct urb *_urb;

 WARN_ON(((void*)0) == skb);
 _urb = usb_alloc_urb(0, GFP_ATOMIC);
 if (!_urb) {
  kfree_skb(skb);
  return ((void*)0);
 }
 _rtl_install_trx_info(rtlusb, skb, ep_num);
 usb_fill_bulk_urb(_urb, rtlusb->udev, usb_sndbulkpipe(rtlusb->udev,
     ep_num), skb->data, skb->len, _rtl_tx_complete, skb);
 _urb->transfer_flags |= URB_ZERO_PACKET;
 return _urb;
}
