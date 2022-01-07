
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct pci_dev {scalar_t__ is_busmaster; } ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {scalar_t__ intr_mode; int worker_thread; int brd_no; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;


 int EIO ;
 scalar_t__ IS_ERR (int ) ;
 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_INIT ;
 scalar_t__ LPFC_INTR_ERROR ;
 int PCI_D0 ;
 int PTR_ERR (int ) ;
 int kthread_run (int ,struct lpfc_hba*,char*,int ) ;
 int lpfc_do_work ;
 int lpfc_log_intr_mode (struct lpfc_hba*,scalar_t__) ;
 int lpfc_online (struct lpfc_hba*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,...) ;
 int lpfc_sli_brdrestart (struct lpfc_hba*) ;
 scalar_t__ lpfc_sli_enable_intr (struct lpfc_hba*,scalar_t__) ;
 struct Scsi_Host* pci_get_drvdata (struct pci_dev*) ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;

__attribute__((used)) static int
lpfc_pci_resume_one_s3(struct pci_dev *pdev)
{
 struct Scsi_Host *shost = pci_get_drvdata(pdev);
 struct lpfc_hba *phba = ((struct lpfc_vport *)shost->hostdata)->phba;
 uint32_t intr_mode;
 int error;

 lpfc_printf_log(phba, KERN_INFO, LOG_INIT,
   "0452 PCI device Power Management resume.\n");


 pci_set_power_state(pdev, PCI_D0);
 pci_restore_state(pdev);





 pci_save_state(pdev);

 if (pdev->is_busmaster)
  pci_set_master(pdev);


 phba->worker_thread = kthread_run(lpfc_do_work, phba,
     "lpfc_worker_%d", phba->brd_no);
 if (IS_ERR(phba->worker_thread)) {
  error = PTR_ERR(phba->worker_thread);
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "0434 PM resume failed to start worker "
    "thread: error=x%x.\n", error);
  return error;
 }


 intr_mode = lpfc_sli_enable_intr(phba, phba->intr_mode);
 if (intr_mode == LPFC_INTR_ERROR) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "0430 PM resume Failed to enable interrupt\n");
  return -EIO;
 } else
  phba->intr_mode = intr_mode;


 lpfc_sli_brdrestart(phba);
 lpfc_online(phba);


 lpfc_log_intr_mode(phba, phba->intr_mode);

 return 0;
}
