
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_5__ {int quirk_altset_not_supp; int ep_list; TYPE_1__* ep0; } ;
struct pxa25x_udc {TYPE_2__ gadget; struct pxa25x_ep* ep; int ep0state; } ;
struct TYPE_6__ {int maxpacket; int * desc; int ep_list; } ;
struct pxa25x_ep {TYPE_3__ ep; scalar_t__ pio_irqs; int queue; scalar_t__ stopped; } ;
struct TYPE_4__ {int ep_list; } ;


 int EP0_IDLE ;
 int INIT_LIST_HEAD (int *) ;
 size_t PXA_UDC_NUM_ENDPOINTS ;
 int list_add_tail (int *,int *) ;
 int usb_ep_set_maxpacket_limit (TYPE_3__*,int ) ;

__attribute__((used)) static void udc_reinit(struct pxa25x_udc *dev)
{
 u32 i;


 INIT_LIST_HEAD (&dev->gadget.ep_list);
 INIT_LIST_HEAD (&dev->gadget.ep0->ep_list);
 dev->ep0state = EP0_IDLE;
 dev->gadget.quirk_altset_not_supp = 1;


 for (i = 0; i < PXA_UDC_NUM_ENDPOINTS; i++) {
  struct pxa25x_ep *ep = &dev->ep[i];

  if (i != 0)
   list_add_tail (&ep->ep.ep_list, &dev->gadget.ep_list);

  ep->ep.desc = ((void*)0);
  ep->stopped = 0;
  INIT_LIST_HEAD (&ep->queue);
  ep->pio_irqs = 0;
  usb_ep_set_maxpacket_limit(&ep->ep, ep->ep.maxpacket);
 }


}
