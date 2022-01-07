
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct AdapterControlBlock {int acb_flags; int arcmsr_do_message_isr_bh; int refresh_timer; int eternal_timer; } ;


 int ACB_F_ADAPTER_REMOVED ;
 int arcmsr_disable_outbound_ints (struct AdapterControlBlock*) ;
 int arcmsr_flush_adapter_cache (struct AdapterControlBlock*) ;
 int arcmsr_free_irq (struct pci_dev*,struct AdapterControlBlock*) ;
 int arcmsr_stop_adapter_bgrb (struct AdapterControlBlock*) ;
 int del_timer_sync (int *) ;
 int flush_work (int *) ;
 struct Scsi_Host* pci_get_drvdata (struct pci_dev*) ;
 scalar_t__ set_date_time ;

__attribute__((used)) static void arcmsr_shutdown(struct pci_dev *pdev)
{
 struct Scsi_Host *host = pci_get_drvdata(pdev);
 struct AdapterControlBlock *acb =
  (struct AdapterControlBlock *)host->hostdata;
 if (acb->acb_flags & ACB_F_ADAPTER_REMOVED)
  return;
 del_timer_sync(&acb->eternal_timer);
 if (set_date_time)
  del_timer_sync(&acb->refresh_timer);
 arcmsr_disable_outbound_ints(acb);
 arcmsr_free_irq(pdev, acb);
 flush_work(&acb->arcmsr_do_message_isr_bh);
 arcmsr_stop_adapter_bgrb(acb);
 arcmsr_flush_adapter_cache(acb);
}
