
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ hdr_type; } ;


 scalar_t__ PCI_HEADER_TYPE_BRIDGE ;
 scalar_t__ PCI_HEADER_TYPE_NORMAL ;
 int pci_restore_config_space_range (struct pci_dev*,int,int,int,int) ;

__attribute__((used)) static void pci_restore_config_space(struct pci_dev *pdev)
{
 if (pdev->hdr_type == PCI_HEADER_TYPE_NORMAL) {
  pci_restore_config_space_range(pdev, 10, 15, 0, 0);

  pci_restore_config_space_range(pdev, 4, 9, 10, 0);
  pci_restore_config_space_range(pdev, 0, 3, 0, 0);
 } else if (pdev->hdr_type == PCI_HEADER_TYPE_BRIDGE) {
  pci_restore_config_space_range(pdev, 12, 15, 0, 0);






  pci_restore_config_space_range(pdev, 9, 11, 0, 1);
  pci_restore_config_space_range(pdev, 0, 8, 0, 0);
 } else {
  pci_restore_config_space_range(pdev, 0, 15, 0, 0);
 }
}
