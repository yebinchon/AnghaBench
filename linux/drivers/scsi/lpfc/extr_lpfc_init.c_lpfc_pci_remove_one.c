
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {int pci_dev_grp; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;


 int KERN_ERR ;
 int LOG_INIT ;


 int lpfc_pci_remove_one_s3 (struct pci_dev*) ;
 int lpfc_pci_remove_one_s4 (struct pci_dev*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int) ;
 struct Scsi_Host* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void
lpfc_pci_remove_one(struct pci_dev *pdev)
{
 struct Scsi_Host *shost = pci_get_drvdata(pdev);
 struct lpfc_hba *phba = ((struct lpfc_vport *)shost->hostdata)->phba;

 switch (phba->pci_dev_grp) {
 case 129:
  lpfc_pci_remove_one_s3(pdev);
  break;
 case 128:
  lpfc_pci_remove_one_s4(pdev);
  break;
 default:
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "1424 Invalid PCI device group: 0x%x\n",
    phba->pci_dev_grp);
  break;
 }
 return;
}
