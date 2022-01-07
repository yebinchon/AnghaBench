
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ctl1; int ctl2; int dw_cap_ptr; int up_cap_ptr; } ;
struct pcie_link_state {int aspm_support; TYPE_1__ l1ss; int downstream; int pdev; } ;
struct aspm_register_info {int l1ss_cap; int l1ss_cap_ptr; } ;


 int ASPM_STATE_L1_2_MASK ;
 int PCI_L1SS_CAP_CM_RESTORE_TIME ;
 int PCI_L1SS_CAP_P_PWR_ON_SCALE ;
 int PCI_L1SS_CAP_P_PWR_ON_VALUE ;
 scalar_t__ calc_l1ss_pwron (int ,int,int) ;
 int encode_l12_threshold (int,int*,int*) ;
 int max (int,int) ;

__attribute__((used)) static void aspm_calc_l1ss_info(struct pcie_link_state *link,
    struct aspm_register_info *upreg,
    struct aspm_register_info *dwreg)
{
 u32 val1, val2, scale1, scale2;
 u32 t_common_mode, t_power_on, l1_2_threshold, scale, value;

 link->l1ss.up_cap_ptr = upreg->l1ss_cap_ptr;
 link->l1ss.dw_cap_ptr = dwreg->l1ss_cap_ptr;
 link->l1ss.ctl1 = link->l1ss.ctl2 = 0;

 if (!(link->aspm_support & ASPM_STATE_L1_2_MASK))
  return;


 val1 = (upreg->l1ss_cap & PCI_L1SS_CAP_CM_RESTORE_TIME) >> 8;
 val2 = (dwreg->l1ss_cap & PCI_L1SS_CAP_CM_RESTORE_TIME) >> 8;
 t_common_mode = max(val1, val2);


 val1 = (upreg->l1ss_cap & PCI_L1SS_CAP_P_PWR_ON_VALUE) >> 19;
 scale1 = (upreg->l1ss_cap & PCI_L1SS_CAP_P_PWR_ON_SCALE) >> 16;
 val2 = (dwreg->l1ss_cap & PCI_L1SS_CAP_P_PWR_ON_VALUE) >> 19;
 scale2 = (dwreg->l1ss_cap & PCI_L1SS_CAP_P_PWR_ON_SCALE) >> 16;

 if (calc_l1ss_pwron(link->pdev, scale1, val1) >
     calc_l1ss_pwron(link->downstream, scale2, val2)) {
  link->l1ss.ctl2 |= scale1 | (val1 << 3);
  t_power_on = calc_l1ss_pwron(link->pdev, scale1, val1);
 } else {
  link->l1ss.ctl2 |= scale2 | (val2 << 3);
  t_power_on = calc_l1ss_pwron(link->downstream, scale2, val2);
 }
 l1_2_threshold = 2 + 4 + t_common_mode + t_power_on;
 encode_l12_threshold(l1_2_threshold, &scale, &value);
 link->l1ss.ctl1 |= t_common_mode << 8 | scale << 29 | value << 16;
}
