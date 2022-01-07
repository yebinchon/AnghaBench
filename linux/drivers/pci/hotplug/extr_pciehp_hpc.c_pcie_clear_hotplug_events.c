
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct controller {int dummy; } ;


 int PCI_EXP_SLTSTA ;
 int PCI_EXP_SLTSTA_DLLSC ;
 int PCI_EXP_SLTSTA_PDC ;
 int ctrl_dev (struct controller*) ;
 int pcie_capability_write_word (int ,int ,int) ;

void pcie_clear_hotplug_events(struct controller *ctrl)
{
 pcie_capability_write_word(ctrl_dev(ctrl), PCI_EXP_SLTSTA,
       PCI_EXP_SLTSTA_PDC | PCI_EXP_SLTSTA_DLLSC);
}
