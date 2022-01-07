
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lpfc_hba {TYPE_1__* pcidev; } ;
struct TYPE_3__ {int irq; } ;


 int KERN_INFO ;
 int KERN_WARNING ;
 int LOG_INIT ;
 int LPFC_DRIVER_NAME ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,...) ;
 int lpfc_sli_intr_handler ;
 int pci_disable_msi (TYPE_1__*) ;
 int pci_enable_msi (TYPE_1__*) ;
 int request_irq (int ,int ,int ,int ,struct lpfc_hba*) ;

__attribute__((used)) static int
lpfc_sli_enable_msi(struct lpfc_hba *phba)
{
 int rc;

 rc = pci_enable_msi(phba->pcidev);
 if (!rc)
  lpfc_printf_log(phba, KERN_INFO, LOG_INIT,
    "0462 PCI enable MSI mode success.\n");
 else {
  lpfc_printf_log(phba, KERN_INFO, LOG_INIT,
    "0471 PCI enable MSI mode failed (%d)\n", rc);
  return rc;
 }

 rc = request_irq(phba->pcidev->irq, lpfc_sli_intr_handler,
    0, LPFC_DRIVER_NAME, phba);
 if (rc) {
  pci_disable_msi(phba->pcidev);
  lpfc_printf_log(phba, KERN_WARNING, LOG_INIT,
    "0478 MSI request_irq failed (%d)\n", rc);
 }
 return rc;
}
