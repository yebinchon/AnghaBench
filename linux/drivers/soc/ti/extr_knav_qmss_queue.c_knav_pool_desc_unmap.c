
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct knav_pool {int dev; TYPE_1__* region; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int desc_size; } ;


 int DMA_FROM_DEVICE ;
 int dma_sync_single_for_cpu (int ,int ,unsigned int,int ) ;
 void* knav_pool_desc_dma_to_virt (struct knav_pool*,int ) ;
 unsigned int min (unsigned int,int ) ;
 int prefetch (void*) ;

void *knav_pool_desc_unmap(void *ph, dma_addr_t dma, unsigned dma_sz)
{
 struct knav_pool *pool = ph;
 unsigned desc_sz;
 void *desc;

 desc_sz = min(dma_sz, pool->region->desc_size);
 desc = knav_pool_desc_dma_to_virt(pool, dma);
 dma_sync_single_for_cpu(pool->dev, dma, desc_sz, DMA_FROM_DEVICE);
 prefetch(desc);
 return desc;
}
