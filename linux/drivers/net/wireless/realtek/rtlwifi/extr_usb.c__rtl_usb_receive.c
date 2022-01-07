
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;
struct rtl_usb {int rx_urb_num; int rx_max_size; int rx_submitted; } ;
struct ieee80211_hw {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int WARN_ON (int) ;
 int _rtl_prep_rx_urb (struct ieee80211_hw*,struct rtl_usb*,struct urb*,int ) ;
 int _rtl_usb_cleanup_rx (struct ieee80211_hw*) ;
 int pr_err (char*) ;
 struct rtl_usb* rtl_usbdev (int ) ;
 int rtl_usbpriv (struct ieee80211_hw*) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_free_urb (struct urb*) ;
 int usb_kill_anchored_urbs (int *) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static int _rtl_usb_receive(struct ieee80211_hw *hw)
{
 struct urb *urb;
 int err;
 int i;
 struct rtl_usb *rtlusb = rtl_usbdev(rtl_usbpriv(hw));

 WARN_ON(0 == rtlusb->rx_urb_num);

 WARN_ON(rtlusb->rx_max_size < 1600);

 for (i = 0; i < rtlusb->rx_urb_num; i++) {
  err = -ENOMEM;
  urb = usb_alloc_urb(0, GFP_KERNEL);
  if (!urb)
   goto err_out;

  err = _rtl_prep_rx_urb(hw, rtlusb, urb, GFP_KERNEL);
  if (err < 0) {
   pr_err("Failed to prep_rx_urb!!\n");
   usb_free_urb(urb);
   goto err_out;
  }

  usb_anchor_urb(urb, &rtlusb->rx_submitted);
  err = usb_submit_urb(urb, GFP_KERNEL);
  if (err)
   goto err_out;
  usb_free_urb(urb);
 }
 return 0;

err_out:
 usb_kill_anchored_urbs(&rtlusb->rx_submitted);
 _rtl_usb_cleanup_rx(hw);
 return err;
}
