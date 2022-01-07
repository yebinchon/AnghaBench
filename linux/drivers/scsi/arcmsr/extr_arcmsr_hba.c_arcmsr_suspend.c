
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pci_dev {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct AdapterControlBlock {int arcmsr_do_message_isr_bh; int refresh_timer; int eternal_timer; } ;
typedef int pm_message_t ;


 int arcmsr_disable_outbound_ints (struct AdapterControlBlock*) ;
 int arcmsr_flush_adapter_cache (struct AdapterControlBlock*) ;
 int arcmsr_free_irq (struct pci_dev*,struct AdapterControlBlock*) ;
 int arcmsr_stop_adapter_bgrb (struct AdapterControlBlock*) ;
 int del_timer_sync (int *) ;
 int flush_work (int *) ;
 int pci_choose_state (struct pci_dev*,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 struct Scsi_Host* pci_get_drvdata (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,struct Scsi_Host*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 scalar_t__ set_date_time ;

__attribute__((used)) static int arcmsr_suspend(struct pci_dev *pdev, pm_message_t state)
{
 uint32_t intmask_org;
 struct Scsi_Host *host = pci_get_drvdata(pdev);
 struct AdapterControlBlock *acb =
  (struct AdapterControlBlock *)host->hostdata;

 intmask_org = arcmsr_disable_outbound_ints(acb);
 arcmsr_free_irq(pdev, acb);
 del_timer_sync(&acb->eternal_timer);
 if (set_date_time)
  del_timer_sync(&acb->refresh_timer);
 flush_work(&acb->arcmsr_do_message_isr_bh);
 arcmsr_stop_adapter_bgrb(acb);
 arcmsr_flush_adapter_cache(acb);
 pci_set_drvdata(pdev, host);
 pci_save_state(pdev);
 pci_disable_device(pdev);
 pci_set_power_state(pdev, pci_choose_state(pdev, state));
 return 0;
}
