
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_5__ {int ep_list; } ;
struct qe_udc {TYPE_2__ gadget; struct qe_ep* eps; } ;
struct TYPE_4__ {int type_control; int type_iso; int type_bulk; int type_int; int dir_in; int dir_out; } ;
struct TYPE_6__ {int ep_list; int * desc; int * ops; TYPE_1__ caps; int name; } ;
struct qe_ep {int stopped; int dir; TYPE_2__* gadget; TYPE_3__ ep; int queue; scalar_t__ has_data; int state; int * tx_req; int * txframe; int * rxframe; scalar_t__ init; scalar_t__ last; scalar_t__ sent; scalar_t__ epnum; int name; struct qe_udc* udc; } ;


 int EP_STATE_IDLE ;
 int INIT_LIST_HEAD (int *) ;
 int * ep_name ;
 int list_add_tail (int *,int *) ;
 int qe_ep_ops ;
 int strcpy (int ,int ) ;
 int usb_ep_set_maxpacket_limit (TYPE_3__*,unsigned short) ;

__attribute__((used)) static int qe_ep_config(struct qe_udc *udc, unsigned char pipe_num)
{
 struct qe_ep *ep = &udc->eps[pipe_num];

 ep->udc = udc;
 strcpy(ep->name, ep_name[pipe_num]);
 ep->ep.name = ep_name[pipe_num];

 if (pipe_num == 0) {
  ep->ep.caps.type_control = 1;
 } else {
  ep->ep.caps.type_iso = 1;
  ep->ep.caps.type_bulk = 1;
  ep->ep.caps.type_int = 1;
 }

 ep->ep.caps.dir_in = 1;
 ep->ep.caps.dir_out = 1;

 ep->ep.ops = &qe_ep_ops;
 ep->stopped = 1;
 usb_ep_set_maxpacket_limit(&ep->ep, (unsigned short) ~0);
 ep->ep.desc = ((void*)0);
 ep->dir = 0xff;
 ep->epnum = (u8)pipe_num;
 ep->sent = 0;
 ep->last = 0;
 ep->init = 0;
 ep->rxframe = ((void*)0);
 ep->txframe = ((void*)0);
 ep->tx_req = ((void*)0);
 ep->state = EP_STATE_IDLE;
 ep->has_data = 0;


 INIT_LIST_HEAD(&ep->queue);


 if (pipe_num != 0)
  list_add_tail(&ep->ep.ep_list, &udc->gadget.ep_list);

 ep->gadget = &udc->gadget;

 return 0;
}
