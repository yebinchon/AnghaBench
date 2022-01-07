
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct trancevibrator {int udev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct trancevibrator*) ;
 struct trancevibrator* kzalloc (int,int ) ;
 int usb_get_dev (struct usb_device*) ;
 int usb_set_intfdata (struct usb_interface*,struct trancevibrator*) ;

__attribute__((used)) static int tv_probe(struct usb_interface *interface,
      const struct usb_device_id *id)
{
 struct usb_device *udev = interface_to_usbdev(interface);
 struct trancevibrator *dev;
 int retval;

 dev = kzalloc(sizeof(struct trancevibrator), GFP_KERNEL);
 if (!dev) {
  retval = -ENOMEM;
  goto error;
 }

 dev->udev = usb_get_dev(udev);
 usb_set_intfdata(interface, dev);

 return 0;

error:
 kfree(dev);
 return retval;
}
