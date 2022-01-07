
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct myrb_hba {int dcdb_pool; int sg_pool; int work_q; int monitor_work; } ;


 int cancel_delayed_work_sync (int *) ;
 int destroy_workqueue (int ) ;
 int dma_pool_destroy (int ) ;

__attribute__((used)) static void myrb_destroy_mempools(struct myrb_hba *cb)
{
 cancel_delayed_work_sync(&cb->monitor_work);
 destroy_workqueue(cb->work_q);

 dma_pool_destroy(cb->sg_pool);
 dma_pool_destroy(cb->dcdb_pool);
}
