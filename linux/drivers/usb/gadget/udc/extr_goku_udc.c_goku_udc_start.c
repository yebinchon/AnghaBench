
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; } ;
struct usb_gadget_driver {TYPE_1__ driver; } ;
struct usb_gadget {int dummy; } ;
struct goku_udc {struct usb_gadget_driver* driver; } ;


 struct goku_udc* to_goku_udc (struct usb_gadget*) ;
 int udc_enable (struct goku_udc*) ;

__attribute__((used)) static int goku_udc_start(struct usb_gadget *g,
  struct usb_gadget_driver *driver)
{
 struct goku_udc *dev = to_goku_udc(g);


 driver->driver.bus = ((void*)0);
 dev->driver = driver;





 udc_enable(dev);

 return 0;
}
