
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdns3_endpoint {int * trb_pool; int trb_pool_dma; struct cdns3_device* cdns3_dev; } ;
struct cdns3_device {int sysdev; } ;


 int cdns3_ring_size (struct cdns3_endpoint*) ;
 int dma_free_coherent (int ,int ,int *,int ) ;

__attribute__((used)) static void cdns3_free_trb_pool(struct cdns3_endpoint *priv_ep)
{
 struct cdns3_device *priv_dev = priv_ep->cdns3_dev;

 if (priv_ep->trb_pool) {
  dma_free_coherent(priv_dev->sysdev,
      cdns3_ring_size(priv_ep),
      priv_ep->trb_pool, priv_ep->trb_pool_dma);
  priv_ep->trb_pool = ((void*)0);
 }
}
