
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct usb_device_id {int dummy; } ;
struct cypress {int udev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_info (int *,char*) ;
 int interface_to_usbdev (struct usb_interface*) ;
 struct cypress* kzalloc (int,int ) ;
 int usb_get_dev (int ) ;
 int usb_set_intfdata (struct usb_interface*,struct cypress*) ;

__attribute__((used)) static int cypress_probe(struct usb_interface *interface,
    const struct usb_device_id *id)
{
 struct cypress *dev = ((void*)0);
 int retval = -ENOMEM;


 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev)
  goto error_mem;

 dev->udev = usb_get_dev(interface_to_usbdev(interface));


 usb_set_intfdata(interface, dev);


 dev_info(&interface->dev,
   "Cypress CY7C63xxx device now attached\n");
 return 0;

error_mem:
 return retval;
}
