
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 scalar_t__ PCI_VC_PORT_CTRL ;
 int PCI_VC_PORT_CTRL_LOAD_TABLE ;
 scalar_t__ PCI_VC_PORT_STATUS ;
 int PCI_VC_PORT_STATUS_TABLE ;
 int pci_err (struct pci_dev*,char*) ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int*) ;
 scalar_t__ pci_wait_for_pending (struct pci_dev*,scalar_t__,int ) ;
 int pci_write_config_word (struct pci_dev*,scalar_t__,int) ;

__attribute__((used)) static void pci_vc_load_arb_table(struct pci_dev *dev, int pos)
{
 u16 ctrl;

 pci_read_config_word(dev, pos + PCI_VC_PORT_CTRL, &ctrl);
 pci_write_config_word(dev, pos + PCI_VC_PORT_CTRL,
         ctrl | PCI_VC_PORT_CTRL_LOAD_TABLE);
 if (pci_wait_for_pending(dev, pos + PCI_VC_PORT_STATUS,
     PCI_VC_PORT_STATUS_TABLE))
  return;

 pci_err(dev, "VC arbitration table failed to load\n");
}
