
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int class; } ;


 int PCI_CLASS_SYSTEM_OTHER ;

__attribute__((used)) static void apex_pci_fixup_class(struct pci_dev *pdev)
{
 pdev->class = (PCI_CLASS_SYSTEM_OTHER << 8) | pdev->class;
}
