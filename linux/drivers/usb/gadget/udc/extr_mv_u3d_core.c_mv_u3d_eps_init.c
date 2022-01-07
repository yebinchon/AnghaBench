
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type_control; int dir_in; int dir_out; int type_iso; int type_bulk; int type_int; } ;
struct TYPE_6__ {int ep_list; int * ops; TYPE_1__ caps; int name; int * desc; } ;
struct mv_u3d_ep {int ep_num; int * ep_context; int req_lock; int req_list; TYPE_3__ ep; int queue; int name; struct mv_u3d* u3d; int direction; int ep_type; scalar_t__ wedge; } ;
struct TYPE_5__ {int ep_list; } ;
struct mv_u3d {int max_eps; int * ep_context; TYPE_2__ gadget; struct mv_u3d_ep* eps; } ;
typedef int name ;


 int INIT_LIST_HEAD (int *) ;
 unsigned short MV_U3D_EP0_MAX_PKT_SIZE ;
 int MV_U3D_EP_DIR_IN ;
 int MV_U3D_EP_DIR_OUT ;
 int USB_ENDPOINT_XFER_CONTROL ;
 int list_add_tail (int *,int *) ;
 int mv_u3d_ep0_desc ;
 int mv_u3d_ep_ops ;
 int snprintf (char*,int,char*,int) ;
 int spin_lock_init (int *) ;
 int strncpy (int ,char*,int) ;
 int usb_ep_set_maxpacket_limit (TYPE_3__*,unsigned short) ;

__attribute__((used)) static int mv_u3d_eps_init(struct mv_u3d *u3d)
{
 struct mv_u3d_ep *ep;
 char name[14];
 int i;


 ep = &u3d->eps[1];
 ep->u3d = u3d;
 strncpy(ep->name, "ep0", sizeof(ep->name));
 ep->ep.name = ep->name;
 ep->ep.ops = &mv_u3d_ep_ops;
 ep->wedge = 0;
 usb_ep_set_maxpacket_limit(&ep->ep, MV_U3D_EP0_MAX_PKT_SIZE);
 ep->ep.caps.type_control = 1;
 ep->ep.caps.dir_in = 1;
 ep->ep.caps.dir_out = 1;
 ep->ep_num = 0;
 ep->ep.desc = &mv_u3d_ep0_desc;
 INIT_LIST_HEAD(&ep->queue);
 INIT_LIST_HEAD(&ep->req_list);
 ep->ep_type = USB_ENDPOINT_XFER_CONTROL;


 ep->ep_context = &u3d->ep_context[1];


 for (i = 2; i < u3d->max_eps * 2; i++) {
  ep = &u3d->eps[i];
  if (i & 1) {
   snprintf(name, sizeof(name), "ep%din", i >> 1);
   ep->direction = MV_U3D_EP_DIR_IN;
   ep->ep.caps.dir_in = 1;
  } else {
   snprintf(name, sizeof(name), "ep%dout", i >> 1);
   ep->direction = MV_U3D_EP_DIR_OUT;
   ep->ep.caps.dir_out = 1;
  }
  ep->u3d = u3d;
  strncpy(ep->name, name, sizeof(ep->name));
  ep->ep.name = ep->name;

  ep->ep.caps.type_iso = 1;
  ep->ep.caps.type_bulk = 1;
  ep->ep.caps.type_int = 1;

  ep->ep.ops = &mv_u3d_ep_ops;
  usb_ep_set_maxpacket_limit(&ep->ep, (unsigned short) ~0);
  ep->ep_num = i / 2;

  INIT_LIST_HEAD(&ep->queue);
  list_add_tail(&ep->ep.ep_list, &u3d->gadget.ep_list);

  INIT_LIST_HEAD(&ep->req_list);
  spin_lock_init(&ep->req_lock);
  ep->ep_context = &u3d->ep_context[i];
 }

 return 0;
}
