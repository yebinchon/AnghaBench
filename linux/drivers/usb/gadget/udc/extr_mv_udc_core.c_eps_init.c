
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ep_list; } ;
struct mv_udc {int max_eps; int * ep_dqh; TYPE_2__ gadget; struct mv_ep* eps; } ;
struct TYPE_4__ {int type_control; int dir_in; int dir_out; int type_iso; int type_bulk; int type_int; } ;
struct TYPE_6__ {int ep_list; int * ops; TYPE_1__ caps; int name; int * desc; } ;
struct mv_ep {int ep_num; int * dqh; TYPE_3__ ep; int queue; scalar_t__ stopped; int name; struct mv_udc* udc; int direction; int ep_type; scalar_t__ wedge; } ;
typedef int name ;


 unsigned short EP0_MAX_PKT_SIZE ;
 int EP_DIR_IN ;
 int EP_DIR_OUT ;
 int INIT_LIST_HEAD (int *) ;
 int USB_ENDPOINT_XFER_CONTROL ;
 int list_add_tail (int *,int *) ;
 int mv_ep0_desc ;
 int mv_ep_ops ;
 int snprintf (char*,int,char*,int) ;
 int strncpy (int ,char*,int) ;
 int usb_ep_set_maxpacket_limit (TYPE_3__*,unsigned short) ;

__attribute__((used)) static int eps_init(struct mv_udc *udc)
{
 struct mv_ep *ep;
 char name[14];
 int i;


 ep = &udc->eps[0];
 ep->udc = udc;
 strncpy(ep->name, "ep0", sizeof(ep->name));
 ep->ep.name = ep->name;
 ep->ep.ops = &mv_ep_ops;
 ep->wedge = 0;
 ep->stopped = 0;
 usb_ep_set_maxpacket_limit(&ep->ep, EP0_MAX_PKT_SIZE);
 ep->ep.caps.type_control = 1;
 ep->ep.caps.dir_in = 1;
 ep->ep.caps.dir_out = 1;
 ep->ep_num = 0;
 ep->ep.desc = &mv_ep0_desc;
 INIT_LIST_HEAD(&ep->queue);

 ep->ep_type = USB_ENDPOINT_XFER_CONTROL;


 for (i = 2; i < udc->max_eps * 2; i++) {
  ep = &udc->eps[i];
  if (i % 2) {
   snprintf(name, sizeof(name), "ep%din", i / 2);
   ep->direction = EP_DIR_IN;
   ep->ep.caps.dir_in = 1;
  } else {
   snprintf(name, sizeof(name), "ep%dout", i / 2);
   ep->direction = EP_DIR_OUT;
   ep->ep.caps.dir_out = 1;
  }
  ep->udc = udc;
  strncpy(ep->name, name, sizeof(ep->name));
  ep->ep.name = ep->name;

  ep->ep.caps.type_iso = 1;
  ep->ep.caps.type_bulk = 1;
  ep->ep.caps.type_int = 1;

  ep->ep.ops = &mv_ep_ops;
  ep->stopped = 0;
  usb_ep_set_maxpacket_limit(&ep->ep, (unsigned short) ~0);
  ep->ep_num = i / 2;

  INIT_LIST_HEAD(&ep->queue);
  list_add_tail(&ep->ep.ep_list, &udc->gadget.ep_list);

  ep->dqh = &udc->ep_dqh[i];
 }

 return 0;
}
