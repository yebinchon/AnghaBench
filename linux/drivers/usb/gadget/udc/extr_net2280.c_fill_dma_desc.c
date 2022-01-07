
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int length; int dma; } ;
struct net2280_request {int valid; TYPE_3__ req; struct net2280_dma* td; } ;
struct TYPE_4__ {int maxpacket; } ;
struct net2280_ep {TYPE_2__* dev; TYPE_1__ ep; scalar_t__ is_in; } ;
struct net2280_dma {void* dmacount; void* dmaaddr; } ;
struct TYPE_5__ {int quirks; } ;


 int BIT (int ) ;
 int DMA_DIRECTION ;
 int DMA_DONE_INTERRUPT_ENABLE ;
 int END_OF_CHAIN ;
 int PLX_2280 ;
 int VALID_BIT ;
 void* cpu_to_le32 (int) ;
 int wmb () ;

__attribute__((used)) static void fill_dma_desc(struct net2280_ep *ep,
     struct net2280_request *req, int valid)
{
 struct net2280_dma *td = req->td;
 u32 dmacount = req->req.length;






 if (ep->is_in)
  dmacount |= BIT(DMA_DIRECTION);
 if ((!ep->is_in && (dmacount % ep->ep.maxpacket) != 0) ||
     !(ep->dev->quirks & PLX_2280))
  dmacount |= BIT(END_OF_CHAIN);

 req->valid = valid;
 if (valid)
  dmacount |= BIT(VALID_BIT);
 dmacount |= BIT(DMA_DONE_INTERRUPT_ENABLE);


 td->dmaaddr = cpu_to_le32 (req->req.dma);


 wmb();
 td->dmacount = cpu_to_le32(dmacount);
}
