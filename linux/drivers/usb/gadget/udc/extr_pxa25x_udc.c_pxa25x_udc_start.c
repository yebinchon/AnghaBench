
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget_driver {int dummy; } ;
struct usb_gadget {int dummy; } ;
struct pxa25x_udc {int pullup; int gadget; TYPE_1__* transceiver; struct usb_gadget_driver* driver; } ;
struct TYPE_2__ {int otg; } ;


 int IS_ERR_OR_NULL (TYPE_1__*) ;
 int dump_state (struct pxa25x_udc*) ;
 int otg_set_peripheral (int ,int *) ;
 struct pxa25x_udc* to_pxa25x (struct usb_gadget*) ;

__attribute__((used)) static int pxa25x_udc_start(struct usb_gadget *g,
  struct usb_gadget_driver *driver)
{
 struct pxa25x_udc *dev = to_pxa25x(g);
 int retval;


 dev->driver = driver;
 dev->pullup = 1;





 if (!IS_ERR_OR_NULL(dev->transceiver)) {
  retval = otg_set_peripheral(dev->transceiver->otg,
      &dev->gadget);
  if (retval)
   goto bind_fail;
 }

 dump_state(dev);
 return 0;
bind_fail:
 return retval;
}
