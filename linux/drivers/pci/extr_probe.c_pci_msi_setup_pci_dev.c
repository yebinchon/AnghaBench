
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {void* msix_cap; void* msi_cap; } ;


 int PCI_CAP_ID_MSI ;
 int PCI_CAP_ID_MSIX ;
 int PCI_MSIX_FLAGS_ENABLE ;
 void* pci_find_capability (struct pci_dev*,int ) ;
 int pci_msi_set_enable (struct pci_dev*,int ) ;
 int pci_msix_clear_and_set_ctrl (struct pci_dev*,int ,int ) ;

__attribute__((used)) static void pci_msi_setup_pci_dev(struct pci_dev *dev)
{





 dev->msi_cap = pci_find_capability(dev, PCI_CAP_ID_MSI);
 if (dev->msi_cap)
  pci_msi_set_enable(dev, 0);

 dev->msix_cap = pci_find_capability(dev, PCI_CAP_ID_MSIX);
 if (dev->msix_cap)
  pci_msix_clear_and_set_ctrl(dev, PCI_MSIX_FLAGS_ENABLE, 0);
}
