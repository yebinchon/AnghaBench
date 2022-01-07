
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int pci_ers_result_t ;
typedef int pci_channel_state_t ;


 int KERN_ERR ;
 int LOG_INIT ;
 int PCI_ERS_RESULT_CAN_RECOVER ;
 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_NEED_RESET ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int) ;
 int lpfc_sli4_prep_dev_for_perm_failure (struct lpfc_hba*) ;
 int lpfc_sli4_prep_dev_for_recover (struct lpfc_hba*) ;
 int lpfc_sli4_prep_dev_for_reset (struct lpfc_hba*) ;



 struct Scsi_Host* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static pci_ers_result_t
lpfc_io_error_detected_s4(struct pci_dev *pdev, pci_channel_state_t state)
{
 struct Scsi_Host *shost = pci_get_drvdata(pdev);
 struct lpfc_hba *phba = ((struct lpfc_vport *)shost->hostdata)->phba;

 switch (state) {
 case 129:

  lpfc_sli4_prep_dev_for_recover(phba);
  return PCI_ERS_RESULT_CAN_RECOVER;
 case 130:

  lpfc_sli4_prep_dev_for_reset(phba);
  return PCI_ERS_RESULT_NEED_RESET;
 case 128:

  lpfc_sli4_prep_dev_for_perm_failure(phba);
  return PCI_ERS_RESULT_DISCONNECT;
 default:

  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "2825 Unknown PCI error state: x%x\n", state);
  lpfc_sli4_prep_dev_for_reset(phba);
  return PCI_ERS_RESULT_NEED_RESET;
 }
}
