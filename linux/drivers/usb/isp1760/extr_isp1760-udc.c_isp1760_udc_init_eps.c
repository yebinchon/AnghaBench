
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ep_list; TYPE_3__* ep0; } ;
struct isp1760_udc {TYPE_1__ gadget; struct isp1760_ep* ep; } ;
struct TYPE_5__ {int type_control; int dir_in; int dir_out; int type_iso; int type_bulk; int type_int; } ;
struct TYPE_6__ {TYPE_2__ caps; int ep_list; int name; int * ops; } ;
struct isp1760_ep {unsigned int addr; int maxpacket; TYPE_3__ ep; int name; int * desc; int queue; struct isp1760_udc* udc; } ;


 unsigned int ARRAY_SIZE (struct isp1760_ep*) ;
 int INIT_LIST_HEAD (int *) ;
 unsigned int USB_DIR_IN ;
 unsigned int USB_DIR_OUT ;
 int isp1760_ep_ops ;
 int list_add_tail (int *,int *) ;
 int sprintf (int ,char*,unsigned int,char*) ;
 int usb_ep_set_maxpacket_limit (TYPE_3__*,int) ;

__attribute__((used)) static void isp1760_udc_init_eps(struct isp1760_udc *udc)
{
 unsigned int i;

 INIT_LIST_HEAD(&udc->gadget.ep_list);

 for (i = 0; i < ARRAY_SIZE(udc->ep); ++i) {
  struct isp1760_ep *ep = &udc->ep[i];
  unsigned int ep_num = (i + 1) / 2;
  bool is_in = !(i & 1);

  ep->udc = udc;

  INIT_LIST_HEAD(&ep->queue);

  ep->addr = (ep_num && is_in ? USB_DIR_IN : USB_DIR_OUT)
    | ep_num;
  ep->desc = ((void*)0);

  sprintf(ep->name, "ep%u%s", ep_num,
   ep_num ? (is_in ? "in" : "out") : "");

  ep->ep.ops = &isp1760_ep_ops;
  ep->ep.name = ep->name;






  if (ep_num == 0) {
   usb_ep_set_maxpacket_limit(&ep->ep, 64);
   ep->ep.caps.type_control = 1;
   ep->ep.caps.dir_in = 1;
   ep->ep.caps.dir_out = 1;
   ep->maxpacket = 64;
   udc->gadget.ep0 = &ep->ep;
  } else {
   usb_ep_set_maxpacket_limit(&ep->ep, 512);
   ep->ep.caps.type_iso = 1;
   ep->ep.caps.type_bulk = 1;
   ep->ep.caps.type_int = 1;
   ep->maxpacket = 0;
   list_add_tail(&ep->ep.ep_list, &udc->gadget.ep_list);
  }

  if (is_in)
   ep->ep.caps.dir_in = 1;
  else
   ep->ep.caps.dir_out = 1;
 }
}
