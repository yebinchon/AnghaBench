
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cdns3_trb {int dummy; } ;
struct cdns3_endpoint {int trb_pool_dma; scalar_t__ trb_pool; } ;
typedef int dma_addr_t ;



dma_addr_t cdns3_trb_virt_to_dma(struct cdns3_endpoint *priv_ep,
     struct cdns3_trb *trb)
{
 u32 offset = (char *)trb - (char *)priv_ep->trb_pool;

 return priv_ep->trb_pool_dma + offset;
}
