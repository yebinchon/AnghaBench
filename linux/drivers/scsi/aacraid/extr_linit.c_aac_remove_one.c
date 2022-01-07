
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct aac_dev {int entry; int fsa_dev; int fibs; int queues; int comm_phys; int comm_addr; int comm_size; TYPE_1__* pdev; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct TYPE_2__ {int dev; } ;


 int AAC_CHARDEV_NEEDS_REINIT ;
 int __aac_shutdown (struct aac_dev*) ;
 int aac_adapter_ioremap (struct aac_dev*,int ) ;
 int aac_cancel_safw_rescan_worker (struct aac_dev*) ;
 int aac_cfg_major ;
 int aac_devices ;
 int aac_fib_map_free (struct aac_dev*) ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 int kfree (int ) ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int pci_disable_device (struct pci_dev*) ;
 struct Scsi_Host* pci_get_drvdata (struct pci_dev*) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;
 int unregister_chrdev (int ,char*) ;

__attribute__((used)) static void aac_remove_one(struct pci_dev *pdev)
{
 struct Scsi_Host *shost = pci_get_drvdata(pdev);
 struct aac_dev *aac = (struct aac_dev *)shost->hostdata;

 aac_cancel_safw_rescan_worker(aac);
 scsi_remove_host(shost);

 __aac_shutdown(aac);
 aac_fib_map_free(aac);
 dma_free_coherent(&aac->pdev->dev, aac->comm_size, aac->comm_addr,
     aac->comm_phys);
 kfree(aac->queues);

 aac_adapter_ioremap(aac, 0);

 kfree(aac->fibs);
 kfree(aac->fsa_dev);

 list_del(&aac->entry);
 scsi_host_put(shost);
 pci_disable_device(pdev);
 if (list_empty(&aac_devices)) {
  unregister_chrdev(aac_cfg_major, "aac");
  aac_cfg_major = AAC_CHARDEV_NEEDS_REINIT;
 }
}
