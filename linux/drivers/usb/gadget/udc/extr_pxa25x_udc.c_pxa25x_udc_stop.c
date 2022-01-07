
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget {int dummy; } ;
struct pxa25x_udc {int * driver; TYPE_1__* transceiver; scalar_t__ pullup; } ;
struct TYPE_2__ {int otg; } ;


 int IS_ERR_OR_NULL (TYPE_1__*) ;
 int dump_state (struct pxa25x_udc*) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int otg_set_peripheral (int ,int *) ;
 int stop_activity (struct pxa25x_udc*,int *) ;
 struct pxa25x_udc* to_pxa25x (struct usb_gadget*) ;

__attribute__((used)) static int pxa25x_udc_stop(struct usb_gadget*g)
{
 struct pxa25x_udc *dev = to_pxa25x(g);

 local_irq_disable();
 dev->pullup = 0;
 stop_activity(dev, ((void*)0));
 local_irq_enable();

 if (!IS_ERR_OR_NULL(dev->transceiver))
  (void) otg_set_peripheral(dev->transceiver->otg, ((void*)0));

 dev->driver = ((void*)0);

 dump_state(dev);

 return 0;
}
