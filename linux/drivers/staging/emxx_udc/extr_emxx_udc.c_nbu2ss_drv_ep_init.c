
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ep_list; TYPE_2__* ep0; } ;
struct nbu2ss_udc {struct nbu2ss_ep* ep; TYPE_1__ gadget; } ;
struct TYPE_5__ {int ep_list; int * ops; int caps; int name; int * driver_data; } ;
struct nbu2ss_ep {TYPE_2__ ep; int queue; int * desc; struct nbu2ss_udc* udc; } ;
struct TYPE_6__ {int caps; int name; } ;


 int EP0_PACKETSIZE ;
 int EP_PACKETSIZE ;
 int INIT_LIST_HEAD (int *) ;
 int NUM_ENDPOINTS ;
 TYPE_3__* ep_info ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 int nbu2ss_ep_ops ;
 int usb_ep_set_maxpacket_limit (TYPE_2__*,int ) ;

__attribute__((used)) static void nbu2ss_drv_ep_init(struct nbu2ss_udc *udc)
{
 int i;

 INIT_LIST_HEAD(&udc->gadget.ep_list);
 udc->gadget.ep0 = &udc->ep[0].ep;

 for (i = 0; i < NUM_ENDPOINTS; i++) {
  struct nbu2ss_ep *ep = &udc->ep[i];

  ep->udc = udc;
  ep->desc = ((void*)0);

  ep->ep.driver_data = ((void*)0);
  ep->ep.name = ep_info[i].name;
  ep->ep.caps = ep_info[i].caps;
  ep->ep.ops = &nbu2ss_ep_ops;

  usb_ep_set_maxpacket_limit(&ep->ep,
        i == 0 ? EP0_PACKETSIZE
        : EP_PACKETSIZE);

  list_add_tail(&ep->ep.ep_list, &udc->gadget.ep_list);
  INIT_LIST_HEAD(&ep->queue);
 }

 list_del_init(&udc->ep[0].ep.ep_list);
}
