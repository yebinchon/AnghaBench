
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct knav_pool {int num_desc; int queue; TYPE_1__* kdev; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int WARN_ON (int) ;
 int dev_dbg (int ,char*) ;
 void* knav_pool_desc_dma_to_virt (struct knav_pool*,int ) ;
 int knav_queue_close (int ) ;
 int knav_queue_pop (int ,unsigned int*) ;

__attribute__((used)) static void kdesc_empty_pool(struct knav_pool *pool)
{
 dma_addr_t dma;
 unsigned size;
 void *desc;
 int i;

 if (!pool->queue)
  return;

 for (i = 0;; i++) {
  dma = knav_queue_pop(pool->queue, &size);
  if (!dma)
   break;
  desc = knav_pool_desc_dma_to_virt(pool, dma);
  if (!desc) {
   dev_dbg(pool->kdev->dev,
    "couldn't unmap desc, continuing\n");
   continue;
  }
 }
 WARN_ON(i != pool->num_desc);
 knav_queue_close(pool->queue);
}
