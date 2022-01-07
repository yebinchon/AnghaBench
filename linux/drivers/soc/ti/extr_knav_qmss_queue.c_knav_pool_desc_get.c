
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knav_pool {int queue; } ;
typedef int dma_addr_t ;


 int ENOMEM ;
 void* ERR_PTR (int ) ;
 void* knav_pool_desc_dma_to_virt (struct knav_pool*,int ) ;
 int knav_queue_pop (int ,unsigned int*) ;
 scalar_t__ unlikely (int) ;

void *knav_pool_desc_get(void *ph)
{
 struct knav_pool *pool = ph;
 dma_addr_t dma;
 unsigned size;
 void *data;

 dma = knav_queue_pop(pool->queue, &size);
 if (unlikely(!dma))
  return ERR_PTR(-ENOMEM);
 data = knav_pool_desc_dma_to_virt(pool, dma);
 return data;
}
