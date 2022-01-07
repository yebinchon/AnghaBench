
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int is_busmaster; } ;


 int PCI_COMMAND ;
 int PCI_COMMAND_MASTER ;
 int pci_dbg (struct pci_dev*,char*,char*) ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;

__attribute__((used)) static void __pci_set_master(struct pci_dev *dev, bool enable)
{
 u16 old_cmd, cmd;

 pci_read_config_word(dev, PCI_COMMAND, &old_cmd);
 if (enable)
  cmd = old_cmd | PCI_COMMAND_MASTER;
 else
  cmd = old_cmd & ~PCI_COMMAND_MASTER;
 if (cmd != old_cmd) {
  pci_dbg(dev, "%s bus mastering\n",
   enable ? "enabling" : "disabling");
  pci_write_config_word(dev, PCI_COMMAND, cmd);
 }
 dev->is_busmaster = enable;
}
