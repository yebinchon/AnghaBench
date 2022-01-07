
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct pci_dev {int dummy; } ;
struct dpc_dev {scalar_t__ rp_extensions; scalar_t__ cap_pos; } ;
typedef int pci_ers_result_t ;


 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_RECOVERED ;
 scalar_t__ PCI_EXP_DPC_STATUS ;
 int PCI_EXP_DPC_STATUS_TRIGGER ;
 scalar_t__ dpc_wait_rp_inactive (struct dpc_dev*) ;
 int pci_write_config_word (struct pci_dev*,scalar_t__,int ) ;
 int pcie_wait_for_link (struct pci_dev*,int) ;
 struct dpc_dev* to_dpc_dev (struct pci_dev*) ;

__attribute__((used)) static pci_ers_result_t dpc_reset_link(struct pci_dev *pdev)
{
 struct dpc_dev *dpc;
 u16 cap;





 dpc = to_dpc_dev(pdev);
 cap = dpc->cap_pos;





 pcie_wait_for_link(pdev, 0);

 if (dpc->rp_extensions && dpc_wait_rp_inactive(dpc))
  return PCI_ERS_RESULT_DISCONNECT;

 pci_write_config_word(pdev, cap + PCI_EXP_DPC_STATUS,
         PCI_EXP_DPC_STATUS_TRIGGER);

 if (!pcie_wait_for_link(pdev, 1))
  return PCI_ERS_RESULT_DISCONNECT;

 return PCI_ERS_RESULT_RECOVERED;
}
