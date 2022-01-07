
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct rtl8xxxu_priv {TYPE_2__* udev; int h2c_mutex; int usb_buf_mutex; int fw_data; TYPE_1__* fops; } ;
struct ieee80211_hw {struct rtl8xxxu_priv* priv; } ;
struct TYPE_5__ {scalar_t__ state; int dev; } ;
struct TYPE_4__ {int (* power_off ) (struct rtl8xxxu_priv*) ;} ;


 scalar_t__ USB_STATE_NOTATTACHED ;
 int dev_info (int *,char*) ;
 int ieee80211_free_hw (struct ieee80211_hw*) ;
 int ieee80211_unregister_hw (struct ieee80211_hw*) ;
 int kfree (int ) ;
 int mutex_destroy (int *) ;
 int stub1 (struct rtl8xxxu_priv*) ;
 struct ieee80211_hw* usb_get_intfdata (struct usb_interface*) ;
 int usb_put_dev (TYPE_2__*) ;
 int usb_reset_device (TYPE_2__*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void rtl8xxxu_disconnect(struct usb_interface *interface)
{
 struct rtl8xxxu_priv *priv;
 struct ieee80211_hw *hw;

 hw = usb_get_intfdata(interface);
 priv = hw->priv;

 ieee80211_unregister_hw(hw);

 priv->fops->power_off(priv);

 usb_set_intfdata(interface, ((void*)0));

 dev_info(&priv->udev->dev, "disconnecting\n");

 kfree(priv->fw_data);
 mutex_destroy(&priv->usb_buf_mutex);
 mutex_destroy(&priv->h2c_mutex);

 if (priv->udev->state != USB_STATE_NOTATTACHED) {
  dev_info(&priv->udev->dev,
    "Device still attached, trying to reset\n");
  usb_reset_device(priv->udev);
 }
 usb_put_dev(priv->udev);
 ieee80211_free_hw(hw);
}
