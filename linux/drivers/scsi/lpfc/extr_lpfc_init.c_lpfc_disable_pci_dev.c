
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct lpfc_hba {struct pci_dev* pcidev; } ;


 int pci_disable_device (struct pci_dev*) ;
 int pci_release_mem_regions (struct pci_dev*) ;

__attribute__((used)) static void
lpfc_disable_pci_dev(struct lpfc_hba *phba)
{
 struct pci_dev *pdev;


 if (!phba->pcidev)
  return;
 else
  pdev = phba->pcidev;

 pci_release_mem_regions(pdev);
 pci_disable_device(pdev);

 return;
}
