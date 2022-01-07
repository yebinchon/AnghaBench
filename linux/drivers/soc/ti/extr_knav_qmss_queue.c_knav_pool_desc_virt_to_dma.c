
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct knav_pool {TYPE_1__* region; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dma_start; void* virt_start; } ;



dma_addr_t knav_pool_desc_virt_to_dma(void *ph, void *virt)
{
 struct knav_pool *pool = ph;
 return pool->region->dma_start + (virt - pool->region->virt_start);
}
