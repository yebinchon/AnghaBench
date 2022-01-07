
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rtl_usb {int dummy; } ;
struct rtl_priv {TYPE_2__* cfg; } ;
struct rtl_hal {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* hw_init ) (struct ieee80211_hw*) ;} ;


 int SET_USB_START (struct rtl_usb*) ;
 int _rtl_usb_receive (struct ieee80211_hw*) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 int rtl_init_rx_config (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct rtl_usb* rtl_usbdev (int ) ;
 int rtl_usbpriv (struct ieee80211_hw*) ;
 int set_hal_start (struct rtl_hal*) ;
 int stub1 (struct ieee80211_hw*) ;

__attribute__((used)) static int rtl_usb_start(struct ieee80211_hw *hw)
{
 int err;
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 struct rtl_usb *rtlusb = rtl_usbdev(rtl_usbpriv(hw));

 err = rtlpriv->cfg->ops->hw_init(hw);
 if (!err) {
  rtl_init_rx_config(hw);


  SET_USB_START(rtlusb);

  set_hal_start(rtlhal);


  err = _rtl_usb_receive(hw);
 }

 return err;
}
