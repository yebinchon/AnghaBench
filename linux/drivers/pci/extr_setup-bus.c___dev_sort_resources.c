
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct pci_dev {int class; } ;
struct list_head {int dummy; } ;


 scalar_t__ PCI_CLASS_BRIDGE_HOST ;
 scalar_t__ PCI_CLASS_NOT_DEFINED ;
 scalar_t__ PCI_CLASS_SYSTEM_PIC ;
 int PCI_COMMAND ;
 scalar_t__ PCI_COMMAND_IO ;
 scalar_t__ PCI_COMMAND_MEMORY ;
 int pci_read_config_word (struct pci_dev*,int ,scalar_t__*) ;
 int pdev_sort_resources (struct pci_dev*,struct list_head*) ;

__attribute__((used)) static void __dev_sort_resources(struct pci_dev *dev, struct list_head *head)
{
 u16 class = dev->class >> 8;


 if (class == PCI_CLASS_NOT_DEFINED || class == PCI_CLASS_BRIDGE_HOST)
  return;


 if (class == PCI_CLASS_SYSTEM_PIC) {
  u16 command;
  pci_read_config_word(dev, PCI_COMMAND, &command);
  if (command & (PCI_COMMAND_IO | PCI_COMMAND_MEMORY))
   return;
 }

 pdev_sort_resources(dev, head);
}
