
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pool_index; int free_buf; int * buf_vaddr; int buf_paddr; } ;
typedef TYPE_1__ uioc_t ;
struct TYPE_7__ {TYPE_3__* dma_pool_list; } ;
typedef TYPE_2__ mraid_mmadp_t ;
struct TYPE_8__ {int buf_size; int in_use; int lock; int handle; int paddr; int * vaddr; } ;
typedef TYPE_3__ mm_dmapool_t ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int MAX_DMA_POOLS ;
 int * dma_pool_alloc (int ,int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
mraid_mm_attach_buf(mraid_mmadp_t *adp, uioc_t *kioc, int xferlen)
{
 mm_dmapool_t *pool;
 int right_pool = -1;
 unsigned long flags;
 int i;

 kioc->pool_index = -1;
 kioc->buf_vaddr = ((void*)0);
 kioc->buf_paddr = 0;
 kioc->free_buf = 0;






 for (i = 0; i < MAX_DMA_POOLS; i++) {

  pool = &adp->dma_pool_list[i];

  if (xferlen > pool->buf_size)
   continue;

  if (right_pool == -1)
   right_pool = i;

  spin_lock_irqsave(&pool->lock, flags);

  if (!pool->in_use) {

   pool->in_use = 1;
   kioc->pool_index = i;
   kioc->buf_vaddr = pool->vaddr;
   kioc->buf_paddr = pool->paddr;

   spin_unlock_irqrestore(&pool->lock, flags);
   return 0;
  }
  else {
   spin_unlock_irqrestore(&pool->lock, flags);
   continue;
  }
 }




 if (right_pool == -1)
  return -EINVAL;





 pool = &adp->dma_pool_list[right_pool];

 spin_lock_irqsave(&pool->lock, flags);

 kioc->pool_index = right_pool;
 kioc->free_buf = 1;
 kioc->buf_vaddr = dma_pool_alloc(pool->handle, GFP_ATOMIC,
       &kioc->buf_paddr);
 spin_unlock_irqrestore(&pool->lock, flags);

 if (!kioc->buf_vaddr)
  return -ENOMEM;

 return 0;
}
