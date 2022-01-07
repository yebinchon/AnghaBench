
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {scalar_t__ authorized; } ;


 int usb_lock_device (struct usb_device*) ;
 int usb_set_configuration (struct usb_device*,int) ;
 int usb_unlock_device (struct usb_device*) ;

int usb_deauthorize_device(struct usb_device *usb_dev)
{
 usb_lock_device(usb_dev);
 if (usb_dev->authorized == 0)
  goto out_unauthorized;

 usb_dev->authorized = 0;
 usb_set_configuration(usb_dev, -1);

out_unauthorized:
 usb_unlock_device(usb_dev);
 return 0;
}
