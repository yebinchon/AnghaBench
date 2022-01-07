
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int PCI_CAP_VC_PER_VC_SIZEOF ;
 int PCI_VC_RES_CTRL ;
 int PCI_VC_RES_CTRL_LOAD_TABLE ;
 int PCI_VC_RES_STATUS ;
 int PCI_VC_RES_STATUS_TABLE ;
 int pci_err (struct pci_dev*,char*,int) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 scalar_t__ pci_wait_for_pending (struct pci_dev*,int,int ) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;

__attribute__((used)) static void pci_vc_load_port_arb_table(struct pci_dev *dev, int pos, int res)
{
 int ctrl_pos, status_pos;
 u32 ctrl;

 ctrl_pos = pos + PCI_VC_RES_CTRL + (res * PCI_CAP_VC_PER_VC_SIZEOF);
 status_pos = pos + PCI_VC_RES_STATUS + (res * PCI_CAP_VC_PER_VC_SIZEOF);

 pci_read_config_dword(dev, ctrl_pos, &ctrl);
 pci_write_config_dword(dev, ctrl_pos,
          ctrl | PCI_VC_RES_CTRL_LOAD_TABLE);

 if (pci_wait_for_pending(dev, status_pos, PCI_VC_RES_STATUS_TABLE))
  return;

 pci_err(dev, "VC%d port arbitration table failed to load\n", res);
}
