
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_5__ {int ep_list; TYPE_1__* ep0; } ;
struct lpc32xx_udc {int ep0state; TYPE_2__ gadget; struct lpc32xx_ep* ep; } ;
struct TYPE_6__ {int ep_list; } ;
struct lpc32xx_ep {scalar_t__ req_pending; int queue; int maxpacket; TYPE_3__ ep; } ;
struct TYPE_4__ {int ep_list; } ;


 int INIT_LIST_HEAD (int *) ;
 size_t NUM_ENDPOINTS ;
 int WAIT_FOR_SETUP ;
 int list_add_tail (int *,int *) ;
 int usb_ep_set_maxpacket_limit (TYPE_3__*,int ) ;

__attribute__((used)) static void udc_reinit(struct lpc32xx_udc *udc)
{
 u32 i;

 INIT_LIST_HEAD(&udc->gadget.ep_list);
 INIT_LIST_HEAD(&udc->gadget.ep0->ep_list);

 for (i = 0; i < NUM_ENDPOINTS; i++) {
  struct lpc32xx_ep *ep = &udc->ep[i];

  if (i != 0)
   list_add_tail(&ep->ep.ep_list, &udc->gadget.ep_list);
  usb_ep_set_maxpacket_limit(&ep->ep, ep->maxpacket);
  INIT_LIST_HEAD(&ep->queue);
  ep->req_pending = 0;
 }

 udc->ep0state = WAIT_FOR_SETUP;
}
