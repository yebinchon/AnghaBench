
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int up_cap_ptr; int dw_cap_ptr; int ctl1; int ctl2; } ;
struct pcie_link_state {int aspm_enabled; TYPE_1__ l1ss; struct pci_dev* pdev; struct pci_dev* downstream; } ;
struct pci_dev {int dummy; } ;


 int ASPM_STATE_L1_1 ;
 int ASPM_STATE_L1_1_PCIPM ;
 int ASPM_STATE_L1_2 ;
 int ASPM_STATE_L1_2_MASK ;
 int ASPM_STATE_L1_2_PCIPM ;
 int PCI_EXP_LNKCTL ;
 int PCI_EXP_LNKCTL_ASPM_L1 ;
 int PCI_L1SS_CAP_L1_PM_SS ;
 int PCI_L1SS_CTL1 ;
 int PCI_L1SS_CTL1_ASPM_L1_1 ;
 int PCI_L1SS_CTL1_ASPM_L1_2 ;
 int PCI_L1SS_CTL1_CM_RESTORE_TIME ;
 int PCI_L1SS_CTL1_L1SS_MASK ;
 int PCI_L1SS_CTL1_LTR_L12_TH_SCALE ;
 int PCI_L1SS_CTL1_LTR_L12_TH_VALUE ;
 int PCI_L1SS_CTL1_PCIPM_L1_1 ;
 int PCI_L1SS_CTL1_PCIPM_L1_2 ;
 int PCI_L1SS_CTL2 ;
 int pci_clear_and_set_dword (struct pci_dev*,int,int,int) ;
 int pci_write_config_dword (struct pci_dev*,int,int ) ;
 int pcie_capability_clear_and_set_word (struct pci_dev*,int ,int ,int ) ;

__attribute__((used)) static void pcie_config_aspm_l1ss(struct pcie_link_state *link, u32 state)
{
 u32 val, enable_req;
 struct pci_dev *child = link->downstream, *parent = link->pdev;
 u32 up_cap_ptr = link->l1ss.up_cap_ptr;
 u32 dw_cap_ptr = link->l1ss.dw_cap_ptr;

 enable_req = (link->aspm_enabled ^ state) & state;
 pci_clear_and_set_dword(child, dw_cap_ptr + PCI_L1SS_CTL1,
    PCI_L1SS_CTL1_L1SS_MASK, 0);
 pci_clear_and_set_dword(parent, up_cap_ptr + PCI_L1SS_CTL1,
    PCI_L1SS_CTL1_L1SS_MASK, 0);




 if (enable_req & (ASPM_STATE_L1_1 | ASPM_STATE_L1_2)) {
  pcie_capability_clear_and_set_word(child, PCI_EXP_LNKCTL,
         PCI_EXP_LNKCTL_ASPM_L1, 0);
  pcie_capability_clear_and_set_word(parent, PCI_EXP_LNKCTL,
         PCI_EXP_LNKCTL_ASPM_L1, 0);
 }

 if (enable_req & ASPM_STATE_L1_2_MASK) {


  pci_write_config_dword(parent, up_cap_ptr + PCI_L1SS_CTL2,
           link->l1ss.ctl2);
  pci_write_config_dword(child, dw_cap_ptr + PCI_L1SS_CTL2,
           link->l1ss.ctl2);


  pci_clear_and_set_dword(parent, up_cap_ptr + PCI_L1SS_CTL1,
     PCI_L1SS_CTL1_CM_RESTORE_TIME,
     link->l1ss.ctl1);


  pci_clear_and_set_dword(parent, up_cap_ptr + PCI_L1SS_CTL1,
     PCI_L1SS_CTL1_LTR_L12_TH_VALUE |
     PCI_L1SS_CTL1_LTR_L12_TH_SCALE,
     link->l1ss.ctl1);
  pci_clear_and_set_dword(child, dw_cap_ptr + PCI_L1SS_CTL1,
     PCI_L1SS_CTL1_LTR_L12_TH_VALUE |
     PCI_L1SS_CTL1_LTR_L12_TH_SCALE,
     link->l1ss.ctl1);
 }

 val = 0;
 if (state & ASPM_STATE_L1_1)
  val |= PCI_L1SS_CTL1_ASPM_L1_1;
 if (state & ASPM_STATE_L1_2)
  val |= PCI_L1SS_CTL1_ASPM_L1_2;
 if (state & ASPM_STATE_L1_1_PCIPM)
  val |= PCI_L1SS_CTL1_PCIPM_L1_1;
 if (state & ASPM_STATE_L1_2_PCIPM)
  val |= PCI_L1SS_CTL1_PCIPM_L1_2;


 pci_clear_and_set_dword(parent, up_cap_ptr + PCI_L1SS_CTL1,
    PCI_L1SS_CAP_L1_PM_SS, val);
 pci_clear_and_set_dword(child, dw_cap_ptr + PCI_L1SS_CTL1,
    PCI_L1SS_CAP_L1_PM_SS, val);
}
