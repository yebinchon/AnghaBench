
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
typedef int pci_ers_result_t ;


 int PCI_ERS_RESULT_NEED_RESET ;
 int dev_err (int *,char*) ;

__attribute__((used)) static pci_ers_result_t aac_pci_mmio_enabled(struct pci_dev *pdev)
{
 dev_err(&pdev->dev, "aacraid: PCI error - mmio enabled\n");
 return PCI_ERS_RESULT_NEED_RESET;
}
