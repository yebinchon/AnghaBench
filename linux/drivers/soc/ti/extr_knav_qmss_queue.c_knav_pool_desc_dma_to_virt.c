
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct knav_pool {TYPE_1__* region; } ;
typedef void* dma_addr_t ;
struct TYPE_2__ {void* virt_start; void* dma_start; } ;



void *knav_pool_desc_dma_to_virt(void *ph, dma_addr_t dma)
{
 struct knav_pool *pool = ph;
 return pool->region->virt_start + (dma - pool->region->dma_start);
}
