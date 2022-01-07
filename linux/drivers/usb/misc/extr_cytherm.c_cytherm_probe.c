
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct usb_cytherm {int brightness; int udev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_info (int *,char*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 struct usb_cytherm* kzalloc (int,int ) ;
 int usb_get_dev (struct usb_device*) ;
 int usb_set_intfdata (struct usb_interface*,struct usb_cytherm*) ;

__attribute__((used)) static int cytherm_probe(struct usb_interface *interface,
    const struct usb_device_id *id)
{
 struct usb_device *udev = interface_to_usbdev(interface);
 struct usb_cytherm *dev = ((void*)0);
 int retval = -ENOMEM;

 dev = kzalloc (sizeof(struct usb_cytherm), GFP_KERNEL);
 if (!dev)
  goto error_mem;

 dev->udev = usb_get_dev(udev);

 usb_set_intfdata (interface, dev);

 dev->brightness = 0xFF;

 dev_info (&interface->dev,
    "Cypress thermometer device now attached\n");
 return 0;

error_mem:
 return retval;
}
