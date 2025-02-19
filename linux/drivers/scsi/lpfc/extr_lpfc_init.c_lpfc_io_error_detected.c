
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {int pci_dev_grp; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int pci_ers_result_t ;
typedef int pci_channel_state_t ;


 int KERN_ERR ;
 int LOG_INIT ;


 int PCI_ERS_RESULT_DISCONNECT ;
 int lpfc_io_error_detected_s3 (struct pci_dev*,int ) ;
 int lpfc_io_error_detected_s4 (struct pci_dev*,int ) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int) ;
 struct Scsi_Host* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static pci_ers_result_t
lpfc_io_error_detected(struct pci_dev *pdev, pci_channel_state_t state)
{
 struct Scsi_Host *shost = pci_get_drvdata(pdev);
 struct lpfc_hba *phba = ((struct lpfc_vport *)shost->hostdata)->phba;
 pci_ers_result_t rc = PCI_ERS_RESULT_DISCONNECT;

 switch (phba->pci_dev_grp) {
 case 129:
  rc = lpfc_io_error_detected_s3(pdev, state);
  break;
 case 128:
  rc = lpfc_io_error_detected_s4(pdev, state);
  break;
 default:
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "1427 Invalid PCI device group: 0x%x\n",
    phba->pci_dev_grp);
  break;
 }
 return rc;
}
