
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct myrb_sge {int dummy; } ;
struct myrb_hba {int monitor_work; int work_q; TYPE_1__* host; int * sg_pool; int * dcdb_pool; int work_q_name; } ;
struct myrb_dcdb {int dummy; } ;
struct TYPE_2__ {size_t sg_tablesize; int host_no; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int KERN_ERR ;
 int create_singlethread_workqueue (int ) ;
 void* dma_pool_create (char*,int *,int,int,int ) ;
 int dma_pool_destroy (int *) ;
 int myrb_monitor ;
 int queue_delayed_work (int ,int *,int) ;
 int shost_printk (int ,TYPE_1__*,char*) ;
 int snprintf (int ,int,char*,int) ;

__attribute__((used)) static bool myrb_create_mempools(struct pci_dev *pdev, struct myrb_hba *cb)
{
 size_t elem_size, elem_align;

 elem_align = sizeof(struct myrb_sge);
 elem_size = cb->host->sg_tablesize * elem_align;
 cb->sg_pool = dma_pool_create("myrb_sg", &pdev->dev,
          elem_size, elem_align, 0);
 if (cb->sg_pool == ((void*)0)) {
  shost_printk(KERN_ERR, cb->host,
        "Failed to allocate SG pool\n");
  return 0;
 }

 cb->dcdb_pool = dma_pool_create("myrb_dcdb", &pdev->dev,
           sizeof(struct myrb_dcdb),
           sizeof(unsigned int), 0);
 if (!cb->dcdb_pool) {
  dma_pool_destroy(cb->sg_pool);
  cb->sg_pool = ((void*)0);
  shost_printk(KERN_ERR, cb->host,
        "Failed to allocate DCDB pool\n");
  return 0;
 }

 snprintf(cb->work_q_name, sizeof(cb->work_q_name),
   "myrb_wq_%d", cb->host->host_no);
 cb->work_q = create_singlethread_workqueue(cb->work_q_name);
 if (!cb->work_q) {
  dma_pool_destroy(cb->dcdb_pool);
  cb->dcdb_pool = ((void*)0);
  dma_pool_destroy(cb->sg_pool);
  cb->sg_pool = ((void*)0);
  shost_printk(KERN_ERR, cb->host,
        "Failed to create workqueue\n");
  return 0;
 }




 INIT_DELAYED_WORK(&cb->monitor_work, myrb_monitor);
 queue_delayed_work(cb->work_q, &cb->monitor_work, 1);

 return 1;
}
