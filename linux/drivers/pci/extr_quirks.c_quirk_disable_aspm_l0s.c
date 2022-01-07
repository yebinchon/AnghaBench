
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCIE_LINK_STATE_L0S ;
 int pci_disable_link_state (struct pci_dev*,int ) ;
 int pci_info (struct pci_dev*,char*) ;

__attribute__((used)) static void quirk_disable_aspm_l0s(struct pci_dev *dev)
{
 pci_info(dev, "Disabling L0s\n");
 pci_disable_link_state(dev, PCIE_LINK_STATE_L0S);
}
