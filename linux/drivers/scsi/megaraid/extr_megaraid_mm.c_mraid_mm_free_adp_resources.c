
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pthru32_h; int pthru32; } ;
typedef TYPE_1__ uioc_t ;
struct TYPE_7__ {int max_kioc; int pthru_dma_pool; TYPE_1__* mbox_list; TYPE_1__* kioc_list; } ;
typedef TYPE_2__ mraid_mmadp_t ;


 int dma_pool_destroy (int ) ;
 int dma_pool_free (int ,int ,int ) ;
 int kfree (TYPE_1__*) ;
 int mraid_mm_teardown_dma_pools (TYPE_2__*) ;

__attribute__((used)) static void
mraid_mm_free_adp_resources(mraid_mmadp_t *adp)
{
 uioc_t *kioc;
 int i;

 mraid_mm_teardown_dma_pools(adp);

 for (i = 0; i < adp->max_kioc; i++) {

  kioc = adp->kioc_list + i;

  dma_pool_free(adp->pthru_dma_pool, kioc->pthru32,
    kioc->pthru32_h);
 }

 kfree(adp->kioc_list);
 kfree(adp->mbox_list);

 dma_pool_destroy(adp->pthru_dma_pool);


 return;
}
