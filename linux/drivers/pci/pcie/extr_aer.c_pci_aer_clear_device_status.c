
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 int PCI_EXP_DEVSTA ;
 int pcie_capability_read_word (struct pci_dev*,int ,int *) ;
 int pcie_capability_write_word (struct pci_dev*,int ,int ) ;

void pci_aer_clear_device_status(struct pci_dev *dev)
{
 u16 sta;

 pcie_capability_read_word(dev, PCI_EXP_DEVSTA, &sta);
 pcie_capability_write_word(dev, PCI_EXP_DEVSTA, sta);
}
