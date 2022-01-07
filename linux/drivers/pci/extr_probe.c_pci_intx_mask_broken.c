
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 int PCI_COMMAND ;
 int PCI_COMMAND_INTX_DISABLE ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;

__attribute__((used)) static int pci_intx_mask_broken(struct pci_dev *dev)
{
 u16 orig, toggle, new;

 pci_read_config_word(dev, PCI_COMMAND, &orig);
 toggle = orig ^ PCI_COMMAND_INTX_DISABLE;
 pci_write_config_word(dev, PCI_COMMAND, toggle);
 pci_read_config_word(dev, PCI_COMMAND, &new);

 pci_write_config_word(dev, PCI_COMMAND, orig);






 if (new != toggle)
  return 1;
 return 0;
}
