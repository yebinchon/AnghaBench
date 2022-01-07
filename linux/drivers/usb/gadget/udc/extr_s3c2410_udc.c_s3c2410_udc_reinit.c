
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_5__ {int ep_list; TYPE_1__* ep0; } ;
struct s3c2410_udc {TYPE_2__ gadget; struct s3c2410_ep* ep; int ep0state; } ;
struct TYPE_6__ {int maxpacket; int * desc; int ep_list; } ;
struct s3c2410_ep {TYPE_3__ ep; int queue; scalar_t__ halted; struct s3c2410_udc* dev; } ;
struct TYPE_4__ {int ep_list; } ;


 int EP0_IDLE ;
 int INIT_LIST_HEAD (int *) ;
 size_t S3C2410_ENDPOINTS ;
 int list_add_tail (int *,int *) ;
 int usb_ep_set_maxpacket_limit (TYPE_3__*,int ) ;

__attribute__((used)) static void s3c2410_udc_reinit(struct s3c2410_udc *dev)
{
 u32 i;


 INIT_LIST_HEAD(&dev->gadget.ep_list);
 INIT_LIST_HEAD(&dev->gadget.ep0->ep_list);
 dev->ep0state = EP0_IDLE;

 for (i = 0; i < S3C2410_ENDPOINTS; i++) {
  struct s3c2410_ep *ep = &dev->ep[i];

  if (i != 0)
   list_add_tail(&ep->ep.ep_list, &dev->gadget.ep_list);

  ep->dev = dev;
  ep->ep.desc = ((void*)0);
  ep->halted = 0;
  INIT_LIST_HEAD(&ep->queue);
  usb_ep_set_maxpacket_limit(&ep->ep, ep->ep.maxpacket);
 }
}
