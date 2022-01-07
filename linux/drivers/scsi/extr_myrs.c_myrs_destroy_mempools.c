
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct myrs_hba {int sense_pool; int dcdb_pool; int sg_pool; int work_q; int monitor_work; } ;


 int cancel_delayed_work_sync (int *) ;
 int destroy_workqueue (int ) ;
 int dma_pool_destroy (int ) ;

__attribute__((used)) static void myrs_destroy_mempools(struct myrs_hba *cs)
{
 cancel_delayed_work_sync(&cs->monitor_work);
 destroy_workqueue(cs->work_q);

 dma_pool_destroy(cs->sg_pool);
 dma_pool_destroy(cs->dcdb_pool);
 dma_pool_destroy(cs->sense_pool);
}
