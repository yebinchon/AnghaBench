
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int minor; int * usb_dev; int dev; } ;
struct usb_class_driver {int dummy; } ;
struct TYPE_2__ {int class; } ;


 int MKDEV (int ,int) ;
 int USB_MAJOR ;
 int destroy_usb_class () ;
 int dev_dbg (int *,char*,int) ;
 int device_destroy (int ,int ) ;
 int down_write (int *) ;
 int minor_rwsem ;
 int up_write (int *) ;
 TYPE_1__* usb_class ;
 int ** usb_minors ;

void usb_deregister_dev(struct usb_interface *intf,
   struct usb_class_driver *class_driver)
{
 if (intf->minor == -1)
  return;

 dev_dbg(&intf->dev, "removing %d minor\n", intf->minor);
 device_destroy(usb_class->class, MKDEV(USB_MAJOR, intf->minor));

 down_write(&minor_rwsem);
 usb_minors[intf->minor] = ((void*)0);
 up_write(&minor_rwsem);

 intf->usb_dev = ((void*)0);
 intf->minor = -1;
 destroy_usb_class();
}
