
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int PCI_EXP_DEVCTL ;
 int PCI_EXP_DEVCTL_NOSNOOP_EN ;
 int PCI_EXP_DEVCTL_RELAX_EN ;
 int dev_name (int *) ;
 struct pci_dev* pci_find_pcie_root_port (struct pci_dev*) ;
 int pci_info (struct pci_dev*,char*,int ) ;
 int pci_warn (struct pci_dev*,char*) ;
 int pcie_capability_clear_and_set_word (struct pci_dev*,int ,int,int ) ;

__attribute__((used)) static void quirk_disable_root_port_attributes(struct pci_dev *pdev)
{
 struct pci_dev *root_port = pci_find_pcie_root_port(pdev);

 if (!root_port) {
  pci_warn(pdev, "PCIe Completion erratum may cause device errors\n");
  return;
 }

 pci_info(root_port, "Disabling No Snoop/Relaxed Ordering Attributes to avoid PCIe Completion erratum in %s\n",
   dev_name(&pdev->dev));
 pcie_capability_clear_and_set_word(root_port, PCI_EXP_DEVCTL,
        PCI_EXP_DEVCTL_RELAX_EN |
        PCI_EXP_DEVCTL_NOSNOOP_EN, 0);
}
