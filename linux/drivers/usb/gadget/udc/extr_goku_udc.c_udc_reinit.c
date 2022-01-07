
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ep_list; int speed; TYPE_4__* ep0; } ;
struct goku_udc {struct goku_ep* ep; TYPE_2__ gadget; TYPE_1__* regs; scalar_t__ irqs; int ep0state; } ;
struct TYPE_7__ {int type_control; int type_bulk; int dir_in; int dir_out; } ;
struct TYPE_8__ {char* name; int ep_list; TYPE_3__ caps; int * ops; } ;
struct goku_ep {unsigned int num; TYPE_4__ ep; int * reg_mode; int queue; struct goku_udc* dev; int * reg_status; int * reg_fifo; } ;
struct TYPE_5__ {int * ep_mode; int * ep_status; int * ep_fifo; } ;


 int EP0_DISCONNECT ;
 int INIT_LIST_HEAD (int *) ;
 int MAX_EP0_SIZE ;
 int USB_SPEED_UNKNOWN ;
 int ep_reset (int *,struct goku_ep*) ;
 int goku_ep_ops ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 int usb_ep_set_maxpacket_limit (TYPE_4__*,int ) ;

__attribute__((used)) static void udc_reinit (struct goku_udc *dev)
{
 static char *names [] = { "ep0", "ep1-bulk", "ep2-bulk", "ep3-bulk" };

 unsigned i;

 INIT_LIST_HEAD (&dev->gadget.ep_list);
 dev->gadget.ep0 = &dev->ep [0].ep;
 dev->gadget.speed = USB_SPEED_UNKNOWN;
 dev->ep0state = EP0_DISCONNECT;
 dev->irqs = 0;

 for (i = 0; i < 4; i++) {
  struct goku_ep *ep = &dev->ep[i];

  ep->num = i;
  ep->ep.name = names[i];
  ep->reg_fifo = &dev->regs->ep_fifo [i];
  ep->reg_status = &dev->regs->ep_status [i];
  ep->reg_mode = &dev->regs->ep_mode[i];

  ep->ep.ops = &goku_ep_ops;
  list_add_tail (&ep->ep.ep_list, &dev->gadget.ep_list);
  ep->dev = dev;
  INIT_LIST_HEAD (&ep->queue);

  ep_reset(((void*)0), ep);

  if (i == 0)
   ep->ep.caps.type_control = 1;
  else
   ep->ep.caps.type_bulk = 1;

  ep->ep.caps.dir_in = 1;
  ep->ep.caps.dir_out = 1;
 }

 dev->ep[0].reg_mode = ((void*)0);
 usb_ep_set_maxpacket_limit(&dev->ep[0].ep, MAX_EP0_SIZE);
 list_del_init (&dev->ep[0].ep.ep_list);
}
