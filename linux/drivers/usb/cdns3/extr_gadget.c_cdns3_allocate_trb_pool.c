
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdns3_trb {int control; int buffer; } ;
struct cdns3_endpoint {int num_trbs; int trb_pool_dma; struct cdns3_trb* trb_pool; int num; struct cdns3_device* cdns3_dev; } ;
struct cdns3_device {int sysdev; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_DMA32 ;
 int TRB_BUFFER (int ) ;
 int TRB_CYCLE ;
 int TRB_LINK ;
 int TRB_SIZE ;
 int TRB_TOGGLE ;
 int TRB_TYPE (int ) ;
 int cdns3_ring_size (struct cdns3_endpoint*) ;
 struct cdns3_trb* dma_alloc_coherent (int ,int,int *,int) ;
 int memset (struct cdns3_trb*,int ,int) ;

int cdns3_allocate_trb_pool(struct cdns3_endpoint *priv_ep)
{
 struct cdns3_device *priv_dev = priv_ep->cdns3_dev;
 int ring_size = cdns3_ring_size(priv_ep);
 struct cdns3_trb *link_trb;

 if (!priv_ep->trb_pool) {
  priv_ep->trb_pool = dma_alloc_coherent(priv_dev->sysdev,
             ring_size,
             &priv_ep->trb_pool_dma,
             GFP_DMA32 | GFP_ATOMIC);
  if (!priv_ep->trb_pool)
   return -ENOMEM;
 } else {
  memset(priv_ep->trb_pool, 0, ring_size);
 }

 if (!priv_ep->num)
  return 0;

 priv_ep->num_trbs = ring_size / TRB_SIZE;

 link_trb = (priv_ep->trb_pool + (priv_ep->num_trbs - 1));
 link_trb->buffer = TRB_BUFFER(priv_ep->trb_pool_dma);
 link_trb->control = TRB_CYCLE | TRB_TYPE(TRB_LINK) | TRB_TOGGLE;

 return 0;
}
