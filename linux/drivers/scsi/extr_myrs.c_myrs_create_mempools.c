
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct myrs_sge {int dummy; } ;
struct myrs_hba {int monitor_work; int work_q; int * sense_pool; int * sg_pool; int * dcdb_pool; int work_q_name; struct Scsi_Host* host; } ;
struct Scsi_Host {size_t sg_tablesize; int host_no; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int KERN_ERR ;
 size_t MYRS_DCDB_SIZE ;
 size_t MYRS_SENSE_SIZE ;
 int create_singlethread_workqueue (int ) ;
 void* dma_pool_create (char*,int *,size_t,int,int ) ;
 int dma_pool_destroy (int *) ;
 int myrs_monitor ;
 int queue_delayed_work (int ,int *,int) ;
 int shost_printk (int ,struct Scsi_Host*,char*) ;
 int snprintf (int ,int,char*,int) ;

__attribute__((used)) static bool myrs_create_mempools(struct pci_dev *pdev, struct myrs_hba *cs)
{
 struct Scsi_Host *shost = cs->host;
 size_t elem_size, elem_align;

 elem_align = sizeof(struct myrs_sge);
 elem_size = shost->sg_tablesize * elem_align;
 cs->sg_pool = dma_pool_create("myrs_sg", &pdev->dev,
          elem_size, elem_align, 0);
 if (cs->sg_pool == ((void*)0)) {
  shost_printk(KERN_ERR, shost,
        "Failed to allocate SG pool\n");
  return 0;
 }

 cs->sense_pool = dma_pool_create("myrs_sense", &pdev->dev,
      MYRS_SENSE_SIZE, sizeof(int), 0);
 if (cs->sense_pool == ((void*)0)) {
  dma_pool_destroy(cs->sg_pool);
  cs->sg_pool = ((void*)0);
  shost_printk(KERN_ERR, shost,
        "Failed to allocate sense data pool\n");
  return 0;
 }

 cs->dcdb_pool = dma_pool_create("myrs_dcdb", &pdev->dev,
     MYRS_DCDB_SIZE,
     sizeof(unsigned char), 0);
 if (!cs->dcdb_pool) {
  dma_pool_destroy(cs->sg_pool);
  cs->sg_pool = ((void*)0);
  dma_pool_destroy(cs->sense_pool);
  cs->sense_pool = ((void*)0);
  shost_printk(KERN_ERR, shost,
        "Failed to allocate DCDB pool\n");
  return 0;
 }

 snprintf(cs->work_q_name, sizeof(cs->work_q_name),
   "myrs_wq_%d", shost->host_no);
 cs->work_q = create_singlethread_workqueue(cs->work_q_name);
 if (!cs->work_q) {
  dma_pool_destroy(cs->dcdb_pool);
  cs->dcdb_pool = ((void*)0);
  dma_pool_destroy(cs->sg_pool);
  cs->sg_pool = ((void*)0);
  dma_pool_destroy(cs->sense_pool);
  cs->sense_pool = ((void*)0);
  shost_printk(KERN_ERR, shost,
        "Failed to create workqueue\n");
  return 0;
 }


 INIT_DELAYED_WORK(&cs->monitor_work, myrs_monitor);
 queue_delayed_work(cs->work_q, &cs->monitor_work, 1);

 return 1;
}
