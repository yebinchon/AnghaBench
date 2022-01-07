
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {int worker_thread; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int pm_message_t ;


 int KERN_INFO ;
 int LOG_INIT ;
 int LPFC_MBX_WAIT ;
 int PCI_D3hot ;
 int kthread_stop (int ) ;
 int lpfc_offline (struct lpfc_hba*) ;
 int lpfc_offline_prep (struct lpfc_hba*,int ) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*) ;
 int lpfc_sli4_disable_intr (struct lpfc_hba*) ;
 int lpfc_sli4_queue_destroy (struct lpfc_hba*) ;
 struct Scsi_Host* pci_get_drvdata (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;

__attribute__((used)) static int
lpfc_pci_suspend_one_s4(struct pci_dev *pdev, pm_message_t msg)
{
 struct Scsi_Host *shost = pci_get_drvdata(pdev);
 struct lpfc_hba *phba = ((struct lpfc_vport *)shost->hostdata)->phba;

 lpfc_printf_log(phba, KERN_INFO, LOG_INIT,
   "2843 PCI device Power Management suspend.\n");


 lpfc_offline_prep(phba, LPFC_MBX_WAIT);
 lpfc_offline(phba);
 kthread_stop(phba->worker_thread);


 lpfc_sli4_disable_intr(phba);
 lpfc_sli4_queue_destroy(phba);


 pci_save_state(pdev);
 pci_set_power_state(pdev, PCI_D3hot);

 return 0;
}
