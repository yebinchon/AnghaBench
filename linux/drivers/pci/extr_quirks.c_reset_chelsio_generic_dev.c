
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int device; scalar_t__ msix_cap; } ;


 int ENOTTY ;
 scalar_t__ PCI_COMMAND ;
 int PCI_COMMAND_MASTER ;
 scalar_t__ PCI_MSIX_FLAGS ;
 int PCI_MSIX_FLAGS_ENABLE ;
 int PCI_MSIX_FLAGS_MASKALL ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int*) ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_write_config_word (struct pci_dev*,scalar_t__,int) ;
 int pcie_flr (struct pci_dev*) ;

__attribute__((used)) static int reset_chelsio_generic_dev(struct pci_dev *dev, int probe)
{
 u16 old_command;
 u16 msix_flags;





 if ((dev->device & 0xf000) != 0x4000)
  return -ENOTTY;





 if (probe)
  return 0;







 pci_read_config_word(dev, PCI_COMMAND, &old_command);
 pci_write_config_word(dev, PCI_COMMAND,
         old_command | PCI_COMMAND_MASTER);





 pci_save_state(dev);
 pci_read_config_word(dev, dev->msix_cap+PCI_MSIX_FLAGS, &msix_flags);
 if ((msix_flags & PCI_MSIX_FLAGS_ENABLE) == 0)
  pci_write_config_word(dev, dev->msix_cap+PCI_MSIX_FLAGS,
          msix_flags |
          PCI_MSIX_FLAGS_ENABLE |
          PCI_MSIX_FLAGS_MASKALL);

 pcie_flr(dev);






 pci_restore_state(dev);
 pci_write_config_word(dev, PCI_COMMAND, old_command);
 return 0;
}
