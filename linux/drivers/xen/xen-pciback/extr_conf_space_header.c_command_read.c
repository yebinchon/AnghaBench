
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;
struct pci_cmd_info {int val; } ;


 int PCI_COMMAND_GUEST ;
 int pci_read_config_word (struct pci_dev*,int,int*) ;

__attribute__((used)) static int command_read(struct pci_dev *dev, int offset, u16 *value, void *data)
{
 int ret = pci_read_config_word(dev, offset, value);
 const struct pci_cmd_info *cmd = data;

 *value &= PCI_COMMAND_GUEST;
 *value |= cmd->val & ~PCI_COMMAND_GUEST;

 return ret;
}
