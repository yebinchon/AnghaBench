
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gr_udc {int dev; struct gr_ep* epo; struct gr_ep* epi; } ;
struct TYPE_2__ {int maxpacket_limit; } ;
struct gr_ep {int tailbuf_paddr; scalar_t__ tailbuf; TYPE_1__ ep; } ;


 int dma_free_coherent (int ,int ,scalar_t__,int ) ;

__attribute__((used)) static void gr_ep_remove(struct gr_udc *dev, int num, int is_in)
{
 struct gr_ep *ep;

 if (is_in)
  ep = &dev->epi[num];
 else
  ep = &dev->epo[num];

 if (ep->tailbuf)
  dma_free_coherent(dev->dev, ep->ep.maxpacket_limit,
      ep->tailbuf, ep->tailbuf_paddr);
}
