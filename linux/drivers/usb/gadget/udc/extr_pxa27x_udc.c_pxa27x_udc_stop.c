
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget {int dummy; } ;
struct pxa_udc {TYPE_1__* transceiver; int * driver; } ;
struct TYPE_2__ {int otg; } ;


 int IS_ERR_OR_NULL (TYPE_1__*) ;
 int otg_set_peripheral (int ,int *) ;
 int stop_activity (struct pxa_udc*) ;
 struct pxa_udc* to_pxa (struct usb_gadget*) ;
 int udc_disable (struct pxa_udc*) ;

__attribute__((used)) static int pxa27x_udc_stop(struct usb_gadget *g)
{
 struct pxa_udc *udc = to_pxa(g);

 stop_activity(udc);
 udc_disable(udc);

 udc->driver = ((void*)0);

 if (!IS_ERR_OR_NULL(udc->transceiver))
  return otg_set_peripheral(udc->transceiver->otg, ((void*)0));
 return 0;
}
