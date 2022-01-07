
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {int hw; int flags; scalar_t__ mac_hw; } ;
struct usb_interface {int dummy; } ;


 int DEVICE_FLAGS_UNPLUG ;
 int ieee80211_free_hw (int ) ;
 int ieee80211_unregister_hw (int ) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int set_bit (int ,int *) ;
 struct vnt_private* usb_get_intfdata (struct usb_interface*) ;
 int usb_put_dev (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void vt6656_disconnect(struct usb_interface *intf)
{
 struct vnt_private *priv = usb_get_intfdata(intf);

 if (!priv)
  return;

 if (priv->mac_hw)
  ieee80211_unregister_hw(priv->hw);

 usb_set_intfdata(intf, ((void*)0));
 usb_put_dev(interface_to_usbdev(intf));

 set_bit(DEVICE_FLAGS_UNPLUG, &priv->flags);

 ieee80211_free_hw(priv->hw);
}
