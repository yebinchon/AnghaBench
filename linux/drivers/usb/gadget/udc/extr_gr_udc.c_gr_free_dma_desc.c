
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gr_udc {int desc_pool; } ;
struct gr_dma_desc {scalar_t__ paddr; } ;
typedef int dma_addr_t ;


 int dma_pool_free (int ,struct gr_dma_desc*,int ) ;

__attribute__((used)) static inline void gr_free_dma_desc(struct gr_udc *dev,
        struct gr_dma_desc *desc)
{
 dma_pool_free(dev->desc_pool, desc, (dma_addr_t)desc->paddr);
}
