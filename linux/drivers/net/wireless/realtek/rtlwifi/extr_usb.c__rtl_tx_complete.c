
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {scalar_t__ context; } ;
struct sk_buff {int dummy; } ;
struct rtl_usb {int intf; } ;
struct ieee80211_tx_info {scalar_t__* rate_driver_data; } ;
struct ieee80211_hw {int dummy; } ;


 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IS_USB_STOP (struct rtl_usb*) ;
 int _usb_tx_post (struct ieee80211_hw*,struct urb*,struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;
 struct ieee80211_hw* usb_get_intfdata (int ) ;

__attribute__((used)) static void _rtl_tx_complete(struct urb *urb)
{
 struct sk_buff *skb = (struct sk_buff *)urb->context;
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 struct rtl_usb *rtlusb = (struct rtl_usb *)info->rate_driver_data[0];
 struct ieee80211_hw *hw = usb_get_intfdata(rtlusb->intf);
 int err;

 if (unlikely(IS_USB_STOP(rtlusb)))
  return;
 err = _usb_tx_post(hw, urb, skb);
 if (err) {

  return;
 }
}
