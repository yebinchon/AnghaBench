
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct rtl_usb {int udev; } ;
struct rtl_priv {TYPE_3__* cfg; int usb_data; TYPE_1__* intf_ops; int status; int firmware_loading_complete; } ;
struct rtl_mac {int mac80211_registered; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int (* deinit_sw_vars ) (struct ieee80211_hw*) ;int (* deinit_sw_leds ) (struct ieee80211_hw*) ;} ;
struct TYPE_4__ {int (* adapter_stop ) (struct ieee80211_hw*) ;} ;


 int RTL_STATUS_INTERFACE_START ;
 int _rtl_usb_io_handler_release (struct ieee80211_hw*) ;
 int clear_bit (int ,int *) ;
 int ieee80211_free_hw (struct ieee80211_hw*) ;
 int ieee80211_unregister_hw (struct ieee80211_hw*) ;
 int kfree (int ) ;
 int rtl_deinit_core (struct ieee80211_hw*) ;
 int rtl_deinit_deferred_work (struct ieee80211_hw*,int) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_usb_deinit (struct ieee80211_hw*) ;
 struct rtl_usb* rtl_usbdev (int ) ;
 int rtl_usbpriv (struct ieee80211_hw*) ;
 int stub1 (struct ieee80211_hw*) ;
 int stub2 (struct ieee80211_hw*) ;
 int stub3 (struct ieee80211_hw*) ;
 scalar_t__ unlikely (int) ;
 struct ieee80211_hw* usb_get_intfdata (struct usb_interface*) ;
 int usb_put_dev (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int wait_for_completion (int *) ;

void rtl_usb_disconnect(struct usb_interface *intf)
{
 struct ieee80211_hw *hw = usb_get_intfdata(intf);
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_mac *rtlmac = rtl_mac(rtl_priv(hw));
 struct rtl_usb *rtlusb = rtl_usbdev(rtl_usbpriv(hw));

 if (unlikely(!rtlpriv))
  return;

 wait_for_completion(&rtlpriv->firmware_loading_complete);
 clear_bit(RTL_STATUS_INTERFACE_START, &rtlpriv->status);

 if (rtlmac->mac80211_registered == 1) {
  ieee80211_unregister_hw(hw);
  rtlmac->mac80211_registered = 0;
 } else {
  rtl_deinit_deferred_work(hw, 0);
  rtlpriv->intf_ops->adapter_stop(hw);
 }


 rtl_usb_deinit(hw);
 rtl_deinit_core(hw);
 kfree(rtlpriv->usb_data);
 rtlpriv->cfg->ops->deinit_sw_leds(hw);
 rtlpriv->cfg->ops->deinit_sw_vars(hw);
 _rtl_usb_io_handler_release(hw);
 usb_put_dev(rtlusb->udev);
 usb_set_intfdata(intf, ((void*)0));
 ieee80211_free_hw(hw);
}
