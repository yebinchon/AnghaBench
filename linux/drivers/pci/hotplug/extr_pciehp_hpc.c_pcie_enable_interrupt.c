
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct controller {int dummy; } ;


 int PCI_EXP_SLTCTL_DLLSCE ;
 int PCI_EXP_SLTCTL_HPIE ;
 int pcie_write_cmd (struct controller*,int,int) ;

void pcie_enable_interrupt(struct controller *ctrl)
{
 u16 mask;

 mask = PCI_EXP_SLTCTL_HPIE | PCI_EXP_SLTCTL_DLLSCE;
 pcie_write_cmd(ctrl, mask, mask);
}
