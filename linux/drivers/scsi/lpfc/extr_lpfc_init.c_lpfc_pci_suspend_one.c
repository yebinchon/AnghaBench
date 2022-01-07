
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {int pci_dev_grp; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int pm_message_t ;


 int ENODEV ;
 int KERN_ERR ;
 int LOG_INIT ;


 int lpfc_pci_suspend_one_s3 (struct pci_dev*,int ) ;
 int lpfc_pci_suspend_one_s4 (struct pci_dev*,int ) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int) ;
 struct Scsi_Host* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static int
lpfc_pci_suspend_one(struct pci_dev *pdev, pm_message_t msg)
{
 struct Scsi_Host *shost = pci_get_drvdata(pdev);
 struct lpfc_hba *phba = ((struct lpfc_vport *)shost->hostdata)->phba;
 int rc = -ENODEV;

 switch (phba->pci_dev_grp) {
 case 129:
  rc = lpfc_pci_suspend_one_s3(pdev, msg);
  break;
 case 128:
  rc = lpfc_pci_suspend_one_s4(pdev, msg);
  break;
 default:
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "1425 Invalid PCI device group: 0x%x\n",
    phba->pci_dev_grp);
  break;
 }
 return rc;
}
