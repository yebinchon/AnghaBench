
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {scalar_t__ hdr_type; } ;


 int PCI_BRIDGE_CONTROL ;
 int PCI_BRIDGE_CTL_SERR ;
 scalar_t__ PCI_HEADER_TYPE_BRIDGE ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;

__attribute__((used)) static void pci_configure_serr(struct pci_dev *dev)
{
 u16 control;

 if (dev->hdr_type == PCI_HEADER_TYPE_BRIDGE) {





  pci_read_config_word(dev, PCI_BRIDGE_CONTROL, &control);
  if (!(control & PCI_BRIDGE_CTL_SERR)) {
   control |= PCI_BRIDGE_CTL_SERR;
   pci_write_config_word(dev, PCI_BRIDGE_CONTROL, control);
  }
 }
}
