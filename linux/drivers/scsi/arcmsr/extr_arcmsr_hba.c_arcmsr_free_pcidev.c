
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct AdapterControlBlock {struct pci_dev* pdev; int refresh_timer; int eternal_timer; int arcmsr_do_message_isr_bh; struct Scsi_Host* host; } ;


 int arcmsr_free_ccb_pool (struct AdapterControlBlock*) ;
 int arcmsr_free_irq (struct pci_dev*,struct AdapterControlBlock*) ;
 int arcmsr_free_sysfs_attr (struct AdapterControlBlock*) ;
 int arcmsr_unmap_pciregion (struct AdapterControlBlock*) ;
 int del_timer_sync (int *) ;
 int flush_work (int *) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;
 scalar_t__ set_date_time ;

__attribute__((used)) static void arcmsr_free_pcidev(struct AdapterControlBlock *acb)
{
 struct pci_dev *pdev;
 struct Scsi_Host *host;

 host = acb->host;
 arcmsr_free_sysfs_attr(acb);
 scsi_remove_host(host);
 flush_work(&acb->arcmsr_do_message_isr_bh);
 del_timer_sync(&acb->eternal_timer);
 if (set_date_time)
  del_timer_sync(&acb->refresh_timer);
 pdev = acb->pdev;
 arcmsr_free_irq(pdev, acb);
 arcmsr_free_ccb_pool(acb);
 arcmsr_unmap_pciregion(acb);
 pci_release_regions(pdev);
 scsi_host_put(host);
 pci_disable_device(pdev);
}
