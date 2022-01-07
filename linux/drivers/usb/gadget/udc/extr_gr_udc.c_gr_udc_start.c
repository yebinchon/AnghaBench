
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; } ;
struct usb_gadget_driver {TYPE_1__ driver; } ;
struct usb_gadget {int dummy; } ;
struct gr_udc {int lock; struct usb_gadget_driver* driver; } ;


 int gr_enable_vbus_detect (struct gr_udc*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct gr_udc* to_gr_udc (struct usb_gadget*) ;

__attribute__((used)) static int gr_udc_start(struct usb_gadget *gadget,
   struct usb_gadget_driver *driver)
{
 struct gr_udc *dev = to_gr_udc(gadget);

 spin_lock(&dev->lock);


 driver->driver.bus = ((void*)0);
 dev->driver = driver;


 gr_enable_vbus_detect(dev);

 spin_unlock(&dev->lock);

 return 0;
}
