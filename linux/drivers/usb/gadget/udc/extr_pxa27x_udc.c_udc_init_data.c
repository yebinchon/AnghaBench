
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int quirk_altset_not_supp; int ep_list; TYPE_1__* ep0; } ;
struct pxa_udc {TYPE_3__* udc_usb_ep; TYPE_2__ gadget; struct pxa_ep* pxa_ep; } ;
struct pxa_ep {int lock; int queue; int enabled; } ;
struct TYPE_8__ {int maxpacket; int ep_list; } ;
struct TYPE_7__ {TYPE_4__ usb_ep; struct pxa_ep* pxa_ep; } ;
struct TYPE_5__ {int ep_list; } ;


 int INIT_LIST_HEAD (int *) ;
 int NR_PXA_ENDPOINTS ;
 int NR_USB_ENDPOINTS ;
 int ep0_idle (struct pxa_udc*) ;
 int is_ep0 (struct pxa_ep*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_init (int *) ;
 int usb_ep_set_maxpacket_limit (TYPE_4__*,int ) ;

__attribute__((used)) static void udc_init_data(struct pxa_udc *dev)
{
 int i;
 struct pxa_ep *ep;


 INIT_LIST_HEAD(&dev->gadget.ep_list);
 INIT_LIST_HEAD(&dev->gadget.ep0->ep_list);
 dev->udc_usb_ep[0].pxa_ep = &dev->pxa_ep[0];
 dev->gadget.quirk_altset_not_supp = 1;
 ep0_idle(dev);


 for (i = 0; i < NR_PXA_ENDPOINTS; i++) {
  ep = &dev->pxa_ep[i];

  ep->enabled = is_ep0(ep);
  INIT_LIST_HEAD(&ep->queue);
  spin_lock_init(&ep->lock);
 }


 for (i = 1; i < NR_USB_ENDPOINTS; i++) {
  list_add_tail(&dev->udc_usb_ep[i].usb_ep.ep_list,
    &dev->gadget.ep_list);
  usb_ep_set_maxpacket_limit(&dev->udc_usb_ep[i].usb_ep,
        dev->udc_usb_ep[i].usb_ep.maxpacket);
 }
}
