
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct rtl8187_priv {int io_dmabuf; int udev; } ;
struct ieee80211_hw {struct rtl8187_priv* priv; } ;


 int ieee80211_free_hw (struct ieee80211_hw*) ;
 int ieee80211_unregister_hw (struct ieee80211_hw*) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kfree (int ) ;
 int rtl8187_leds_exit (struct ieee80211_hw*) ;
 int rtl8187_rfkill_exit (struct ieee80211_hw*) ;
 struct ieee80211_hw* usb_get_intfdata (struct usb_interface*) ;
 int usb_put_dev (int ) ;
 int usb_reset_device (int ) ;

__attribute__((used)) static void rtl8187_disconnect(struct usb_interface *intf)
{
 struct ieee80211_hw *dev = usb_get_intfdata(intf);
 struct rtl8187_priv *priv;

 if (!dev)
  return;




 rtl8187_rfkill_exit(dev);
 ieee80211_unregister_hw(dev);

 priv = dev->priv;
 usb_reset_device(priv->udev);
 usb_put_dev(interface_to_usbdev(intf));
 kfree(priv->io_dmabuf);
 ieee80211_free_hw(dev);
}
