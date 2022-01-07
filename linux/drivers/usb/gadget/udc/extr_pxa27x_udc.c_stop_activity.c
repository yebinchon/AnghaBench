
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int speed; } ;
struct pxa_udc {TYPE_2__* udc_usb_ep; TYPE_1__ gadget; } ;
struct TYPE_4__ {int usb_ep; } ;


 int NR_USB_ENDPOINTS ;
 int USB_SPEED_UNKNOWN ;
 int pxa_ep_disable (int *) ;

__attribute__((used)) static void stop_activity(struct pxa_udc *udc)
{
 int i;

 udc->gadget.speed = USB_SPEED_UNKNOWN;

 for (i = 0; i < NR_USB_ENDPOINTS; i++)
  pxa_ep_disable(&udc->udc_usb_ep[i].usb_ep);
}
