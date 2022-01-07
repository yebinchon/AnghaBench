
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 int PCI_COMMAND ;
 int PCI_COMMAND_INVALIDATE ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;

void pci_clear_mwi(struct pci_dev *dev)
{

 u16 cmd;

 pci_read_config_word(dev, PCI_COMMAND, &cmd);
 if (cmd & PCI_COMMAND_INVALIDATE) {
  cmd &= ~PCI_COMMAND_INVALIDATE;
  pci_write_config_word(dev, PCI_COMMAND, cmd);
 }

}
