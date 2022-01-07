
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knav_region {int desc_size; scalar_t__ dma_start; } ;
struct knav_pool {int desc_size; int num_desc; int region_offset; int queue; int dev; struct knav_region* region; } ;
typedef scalar_t__ dma_addr_t ;


 unsigned int ALIGN (int,int ) ;
 int DMA_TO_DEVICE ;
 int SMP_CACHE_BYTES ;
 int dma_sync_single_for_device (int ,scalar_t__,unsigned int,int ) ;
 int knav_queue_push (int ,scalar_t__,unsigned int,int ) ;

__attribute__((used)) static void kdesc_fill_pool(struct knav_pool *pool)
{
 struct knav_region *region;
 int i;

 region = pool->region;
 pool->desc_size = region->desc_size;
 for (i = 0; i < pool->num_desc; i++) {
  int index = pool->region_offset + i;
  dma_addr_t dma_addr;
  unsigned dma_size;
  dma_addr = region->dma_start + (region->desc_size * index);
  dma_size = ALIGN(pool->desc_size, SMP_CACHE_BYTES);
  dma_sync_single_for_device(pool->dev, dma_addr, dma_size,
        DMA_TO_DEVICE);
  knav_queue_push(pool->queue, dma_addr, dma_size, 0);
 }
}
