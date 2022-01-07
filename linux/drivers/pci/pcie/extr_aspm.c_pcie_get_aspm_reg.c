
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct pci_dev {int ltr_path; } ;
struct aspm_register_info {int support; int latency_encoding_l0s; int latency_encoding_l1; int enabled; int l1ss_cap; int l1ss_ctl1; int l1ss_ctl2; scalar_t__ l1ss_cap_ptr; } ;


 int PCI_EXP_LNKCAP ;
 int PCI_EXP_LNKCAP_ASPMS ;
 int PCI_EXP_LNKCAP_L0SEL ;
 int PCI_EXP_LNKCAP_L1EL ;
 int PCI_EXP_LNKCTL ;
 int PCI_EXP_LNKCTL_ASPMC ;
 int PCI_EXT_CAP_ID_L1SS ;
 scalar_t__ PCI_L1SS_CAP ;
 int PCI_L1SS_CAP_ASPM_L1_2 ;
 int PCI_L1SS_CAP_L1_PM_SS ;
 scalar_t__ PCI_L1SS_CTL1 ;
 scalar_t__ PCI_L1SS_CTL2 ;
 scalar_t__ pci_find_ext_capability (struct pci_dev*,int ) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int*) ;
 int pcie_capability_read_dword (struct pci_dev*,int ,int*) ;
 int pcie_capability_read_word (struct pci_dev*,int ,int*) ;

__attribute__((used)) static void pcie_get_aspm_reg(struct pci_dev *pdev,
         struct aspm_register_info *info)
{
 u16 reg16;
 u32 reg32;

 pcie_capability_read_dword(pdev, PCI_EXP_LNKCAP, &reg32);
 info->support = (reg32 & PCI_EXP_LNKCAP_ASPMS) >> 10;
 info->latency_encoding_l0s = (reg32 & PCI_EXP_LNKCAP_L0SEL) >> 12;
 info->latency_encoding_l1 = (reg32 & PCI_EXP_LNKCAP_L1EL) >> 15;
 pcie_capability_read_word(pdev, PCI_EXP_LNKCTL, &reg16);
 info->enabled = reg16 & PCI_EXP_LNKCTL_ASPMC;


 info->l1ss_cap = info->l1ss_ctl1 = info->l1ss_ctl2 = 0;
 info->l1ss_cap_ptr = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_L1SS);
 if (!info->l1ss_cap_ptr)
  return;
 pci_read_config_dword(pdev, info->l1ss_cap_ptr + PCI_L1SS_CAP,
         &info->l1ss_cap);
 if (!(info->l1ss_cap & PCI_L1SS_CAP_L1_PM_SS)) {
  info->l1ss_cap = 0;
  return;
 }






 if (!pdev->ltr_path)
  info->l1ss_cap &= ~PCI_L1SS_CAP_ASPM_L1_2;

 pci_read_config_dword(pdev, info->l1ss_cap_ptr + PCI_L1SS_CTL1,
         &info->l1ss_ctl1);
 pci_read_config_dword(pdev, info->l1ss_cap_ptr + PCI_L1SS_CTL2,
         &info->l1ss_ctl2);
}
