
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pxa_ep {int queue; } ;
struct TYPE_2__ {int length; } ;
struct pxa27x_request {int in_use; int queue; TYPE_1__ req; } ;


 int UDCCSR ;
 int ep_vdbg (struct pxa_ep*,char*,struct pxa27x_request*,int ,int ) ;
 int list_add_tail (int *,int *) ;
 int pio_irq_enable (struct pxa_ep*) ;
 int udc_ep_readl (struct pxa_ep*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ep_add_request(struct pxa_ep *ep, struct pxa27x_request *req)
{
 if (unlikely(!req))
  return;
 ep_vdbg(ep, "req:%p, lg=%d, udccsr=0x%03x\n", req,
  req->req.length, udc_ep_readl(ep, UDCCSR));

 req->in_use = 1;
 list_add_tail(&req->queue, &ep->queue);
 pio_irq_enable(ep);
}
