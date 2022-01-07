
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct musb_hw_ep {int max_packet_sz_tx; int max_packet_sz_rx; scalar_t__ is_shared_fifo; } ;
struct TYPE_5__ {int type_control; int type_iso; int type_bulk; int type_int; int dir_in; int dir_out; } ;
struct TYPE_6__ {TYPE_2__ caps; int ep_list; int * ops; int name; } ;
struct musb_ep {int current_epnum; int is_in; TYPE_3__ end_point; int name; int req_list; struct musb_hw_ep* hw_ep; struct musb* musb; } ;
struct TYPE_4__ {int ep_list; TYPE_3__* ep0; } ;
struct musb {TYPE_1__ g; struct musb_hw_ep* endpoints; } ;


 int INIT_LIST_HEAD (int *) ;
 int list_add_tail (int *,int *) ;
 int memset (struct musb_ep*,int ,int) ;
 int musb_ep_ops ;
 int musb_g_ep0_ops ;
 int sprintf (int ,char*,int,char*) ;
 int usb_ep_set_maxpacket_limit (TYPE_3__*,int) ;

__attribute__((used)) static void
init_peripheral_ep(struct musb *musb, struct musb_ep *ep, u8 epnum, int is_in)
{
 struct musb_hw_ep *hw_ep = musb->endpoints + epnum;

 memset(ep, 0, sizeof *ep);

 ep->current_epnum = epnum;
 ep->musb = musb;
 ep->hw_ep = hw_ep;
 ep->is_in = is_in;

 INIT_LIST_HEAD(&ep->req_list);

 sprintf(ep->name, "ep%d%s", epnum,
   (!epnum || hw_ep->is_shared_fifo) ? "" : (
    is_in ? "in" : "out"));
 ep->end_point.name = ep->name;
 INIT_LIST_HEAD(&ep->end_point.ep_list);
 if (!epnum) {
  usb_ep_set_maxpacket_limit(&ep->end_point, 64);
  ep->end_point.caps.type_control = 1;
  ep->end_point.ops = &musb_g_ep0_ops;
  musb->g.ep0 = &ep->end_point;
 } else {
  if (is_in)
   usb_ep_set_maxpacket_limit(&ep->end_point, hw_ep->max_packet_sz_tx);
  else
   usb_ep_set_maxpacket_limit(&ep->end_point, hw_ep->max_packet_sz_rx);
  ep->end_point.caps.type_iso = 1;
  ep->end_point.caps.type_bulk = 1;
  ep->end_point.caps.type_int = 1;
  ep->end_point.ops = &musb_ep_ops;
  list_add_tail(&ep->end_point.ep_list, &musb->g.ep_list);
 }

 if (!epnum || hw_ep->is_shared_fifo) {
  ep->end_point.caps.dir_in = 1;
  ep->end_point.caps.dir_out = 1;
 } else if (is_in)
  ep->end_point.caps.dir_in = 1;
 else
  ep->end_point.caps.dir_out = 1;
}
