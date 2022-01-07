
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* dma_pool_list; } ;
typedef TYPE_1__ mraid_mmadp_t ;
struct TYPE_5__ {int * handle; int paddr; scalar_t__ vaddr; } ;
typedef TYPE_2__ mm_dmapool_t ;


 int MAX_DMA_POOLS ;
 int dma_pool_destroy (int *) ;
 int dma_pool_free (int *,scalar_t__,int ) ;

__attribute__((used)) static void
mraid_mm_teardown_dma_pools(mraid_mmadp_t *adp)
{
 int i;
 mm_dmapool_t *pool;

 for (i = 0; i < MAX_DMA_POOLS; i++) {

  pool = &adp->dma_pool_list[i];

  if (pool->handle) {

   if (pool->vaddr)
    dma_pool_free(pool->handle, pool->vaddr,
       pool->paddr);

   dma_pool_destroy(pool->handle);
   pool->handle = ((void*)0);
  }
 }

 return;
}
