
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int non_compliant_bars; } ;


 int PCI_BASE_ADDRESS_0 ;
 int pci_write_config_dword (struct pci_dev*,int ,int) ;

__attribute__((used)) static void tango_fixup_bar(struct pci_dev *dev)
{
 dev->non_compliant_bars = 1;
 pci_write_config_dword(dev, PCI_BASE_ADDRESS_0, 0x80000000);
}
