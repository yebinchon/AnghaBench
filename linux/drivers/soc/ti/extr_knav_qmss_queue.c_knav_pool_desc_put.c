
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct knav_pool {TYPE_1__* region; int queue; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int desc_size; } ;


 int knav_pool_desc_virt_to_dma (struct knav_pool*,void*) ;
 int knav_queue_push (int ,int ,int ,int ) ;

void knav_pool_desc_put(void *ph, void *desc)
{
 struct knav_pool *pool = ph;
 dma_addr_t dma;
 dma = knav_pool_desc_virt_to_dma(pool, desc);
 knav_queue_push(pool->queue, dma, pool->region->desc_size, 0);
}
