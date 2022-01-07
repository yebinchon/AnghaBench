
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct phy_dev {struct phy_dev* priv_dev; } ;
struct lte_udev {struct lte_udev* priv_dev; } ;


 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct phy_dev*) ;
 int release_usb (struct phy_dev*) ;
 int unregister_lte_device (struct phy_dev*) ;
 struct phy_dev* usb_get_intfdata (struct usb_interface*) ;
 int usb_put_dev (struct usb_device*) ;

__attribute__((used)) static void gdm_usb_disconnect(struct usb_interface *intf)
{
 struct phy_dev *phy_dev;
 struct lte_udev *udev;
 struct usb_device *usbdev;

 usbdev = interface_to_usbdev(intf);
 phy_dev = usb_get_intfdata(intf);

 udev = phy_dev->priv_dev;
 unregister_lte_device(phy_dev);

 release_usb(udev);

 kfree(udev);
 udev = ((void*)0);

 kfree(phy_dev);
 phy_dev = ((void*)0);

 usb_put_dev(usbdev);
}
