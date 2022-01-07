
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int ep_list; int caps; int name; } ;
struct net2280_ep {int num; int fifo_size; scalar_t__ stopped; TYPE_3__ ep; int * cfg; int * regs; int * dma; struct net2280* dev; } ;
struct TYPE_5__ {TYPE_3__* ep0; } ;
struct net2280 {TYPE_2__* dep; TYPE_1__ gadget; struct net2280_ep* ep; int regs; int * epregs; int * dma; } ;
struct TYPE_8__ {int caps; int name; } ;
struct TYPE_6__ {int dep_cfg; } ;


 int EP_DONTUSE ;
 int INIT_LIST_HEAD (int *) ;
 TYPE_4__* ep_info_dft ;
 int ep_reset_228x (int ,struct net2280_ep*) ;
 int usb_ep_set_maxpacket_limit (TYPE_3__*,int) ;
 int writel (int ,int *) ;

__attribute__((used)) static void usb_reinit_228x(struct net2280 *dev)
{
 u32 tmp;


 for (tmp = 0; tmp < 7; tmp++) {
  struct net2280_ep *ep = &dev->ep[tmp];

  ep->ep.name = ep_info_dft[tmp].name;
  ep->ep.caps = ep_info_dft[tmp].caps;
  ep->dev = dev;
  ep->num = tmp;

  if (tmp > 0 && tmp <= 4) {
   ep->fifo_size = 1024;
   ep->dma = &dev->dma[tmp - 1];
  } else
   ep->fifo_size = 64;
  ep->regs = &dev->epregs[tmp];
  ep->cfg = &dev->epregs[tmp];
  ep_reset_228x(dev->regs, ep);
 }
 usb_ep_set_maxpacket_limit(&dev->ep[0].ep, 64);
 usb_ep_set_maxpacket_limit(&dev->ep[5].ep, 64);
 usb_ep_set_maxpacket_limit(&dev->ep[6].ep, 64);

 dev->gadget.ep0 = &dev->ep[0].ep;
 dev->ep[0].stopped = 0;
 INIT_LIST_HEAD(&dev->gadget.ep0->ep_list);




 for (tmp = 0; tmp < 5; tmp++)
  writel(EP_DONTUSE, &dev->dep[tmp].dep_cfg);
}
