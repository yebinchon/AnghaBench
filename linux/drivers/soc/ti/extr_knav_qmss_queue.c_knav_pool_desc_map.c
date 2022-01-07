
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct knav_pool {int dev; TYPE_1__* region; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int desc_size; } ;


 unsigned int ALIGN (unsigned int,int ) ;
 int DMA_TO_DEVICE ;
 int SMP_CACHE_BYTES ;
 int __iowmb () ;
 int dma_sync_single_for_device (int ,int ,unsigned int,int ) ;
 int knav_pool_desc_virt_to_dma (struct knav_pool*,void*) ;
 unsigned int min (unsigned int,int ) ;

int knav_pool_desc_map(void *ph, void *desc, unsigned size,
     dma_addr_t *dma, unsigned *dma_sz)
{
 struct knav_pool *pool = ph;
 *dma = knav_pool_desc_virt_to_dma(pool, desc);
 size = min(size, pool->region->desc_size);
 size = ALIGN(size, SMP_CACHE_BYTES);
 *dma_sz = size;
 dma_sync_single_for_device(pool->dev, *dma, size, DMA_TO_DEVICE);


 __iowmb();

 return 0;
}
