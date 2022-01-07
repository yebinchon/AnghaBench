
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {scalar_t__ hdr_type; scalar_t__ is_busmaster; scalar_t__ msi_enabled; scalar_t__ msix_enabled; } ;


 int PCI_COMMAND ;
 int PCI_COMMAND_INVALIDATE ;
 scalar_t__ PCI_HEADER_TYPE_NORMAL ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_msi (struct pci_dev*) ;
 int pci_disable_msix (struct pci_dev*) ;
 scalar_t__ pci_is_enabled (struct pci_dev*) ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;
 int xen_pcibk_control_isr (struct pci_dev*,int) ;

void xen_pcibk_reset_device(struct pci_dev *dev)
{
 u16 cmd;

 xen_pcibk_control_isr(dev, 1 );


 if (dev->hdr_type == PCI_HEADER_TYPE_NORMAL) {
  if (pci_is_enabled(dev))
   pci_disable_device(dev);

  dev->is_busmaster = 0;
 } else {
  pci_read_config_word(dev, PCI_COMMAND, &cmd);
  if (cmd & (PCI_COMMAND_INVALIDATE)) {
   cmd &= ~(PCI_COMMAND_INVALIDATE);
   pci_write_config_word(dev, PCI_COMMAND, cmd);

   dev->is_busmaster = 0;
  }
 }
}
