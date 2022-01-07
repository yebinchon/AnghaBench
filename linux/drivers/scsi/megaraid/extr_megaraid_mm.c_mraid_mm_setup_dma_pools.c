
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* pdev; TYPE_3__* dma_pool_list; } ;
typedef TYPE_2__ mraid_mmadp_t ;
struct TYPE_8__ {int buf_size; int vaddr; int paddr; int handle; int lock; } ;
typedef TYPE_3__ mm_dmapool_t ;
struct TYPE_6__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_DMA_POOLS ;
 int MRAID_MM_INIT_BUFF_SIZE ;
 int dma_pool_alloc (int ,int ,int *) ;
 int dma_pool_create (char*,int *,int,int,int ) ;
 int mraid_mm_teardown_dma_pools (TYPE_2__*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int
mraid_mm_setup_dma_pools(mraid_mmadp_t *adp)
{
 mm_dmapool_t *pool;
 int bufsize;
 int i;




 bufsize = MRAID_MM_INIT_BUFF_SIZE;

 for (i = 0; i < MAX_DMA_POOLS; i++){

  pool = &adp->dma_pool_list[i];

  pool->buf_size = bufsize;
  spin_lock_init(&pool->lock);

  pool->handle = dma_pool_create("megaraid mm data buffer",
      &adp->pdev->dev, bufsize,
      16, 0);

  if (!pool->handle) {
   goto dma_pool_setup_error;
  }

  pool->vaddr = dma_pool_alloc(pool->handle, GFP_KERNEL,
       &pool->paddr);

  if (!pool->vaddr)
   goto dma_pool_setup_error;

  bufsize = bufsize * 2;
 }

 return 0;

dma_pool_setup_error:

 mraid_mm_teardown_dma_pools(adp);
 return (-ENOMEM);
}
