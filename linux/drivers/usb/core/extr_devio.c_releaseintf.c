
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct usb_dev_state {int ifclaimed; struct usb_device* dev; } ;


 int EINVAL ;
 int ENOENT ;
 scalar_t__ test_and_clear_bit (unsigned int,int *) ;
 int usb_driver_release_interface (int *,struct usb_interface*) ;
 struct usb_interface* usb_ifnum_to_if (struct usb_device*,unsigned int) ;
 int usbfs_driver ;

__attribute__((used)) static int releaseintf(struct usb_dev_state *ps, unsigned int ifnum)
{
 struct usb_device *dev;
 struct usb_interface *intf;
 int err;

 err = -EINVAL;
 if (ifnum >= 8*sizeof(ps->ifclaimed))
  return err;
 dev = ps->dev;
 intf = usb_ifnum_to_if(dev, ifnum);
 if (!intf)
  err = -ENOENT;
 else if (test_and_clear_bit(ifnum, &ps->ifclaimed)) {
  usb_driver_release_interface(&usbfs_driver, intf);
  err = 0;
 }
 return err;
}
