
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gr_ep {TYPE_1__* dev; } ;
struct gr_dma_desc {int paddr; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; int desc_pool; } ;


 int dev_err (int ,char*) ;
 struct gr_dma_desc* dma_pool_zalloc (int ,int ,int *) ;

__attribute__((used)) static struct gr_dma_desc *gr_alloc_dma_desc(struct gr_ep *ep, gfp_t gfp_flags)
{
 dma_addr_t paddr;
 struct gr_dma_desc *dma_desc;

 dma_desc = dma_pool_zalloc(ep->dev->desc_pool, gfp_flags, &paddr);
 if (!dma_desc) {
  dev_err(ep->dev->dev, "Could not allocate from DMA pool\n");
  return ((void*)0);
 }

 dma_desc->paddr = paddr;

 return dma_desc;
}
