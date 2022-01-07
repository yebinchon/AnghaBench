
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 int PCI_BRIDGE_CONTROL ;
 int PCI_BRIDGE_CTL_BUS_RESET ;
 int msleep (int) ;
 int pci_read_config_word (struct pci_dev*,int ,int *) ;
 int pci_write_config_word (struct pci_dev*,int ,int ) ;
 int ssleep (int) ;

void pci_reset_secondary_bus(struct pci_dev *dev)
{
 u16 ctrl;

 pci_read_config_word(dev, PCI_BRIDGE_CONTROL, &ctrl);
 ctrl |= PCI_BRIDGE_CTL_BUS_RESET;
 pci_write_config_word(dev, PCI_BRIDGE_CONTROL, ctrl);





 msleep(2);

 ctrl &= ~PCI_BRIDGE_CTL_BUS_RESET;
 pci_write_config_word(dev, PCI_BRIDGE_CONTROL, ctrl);
 ssleep(1);
}
