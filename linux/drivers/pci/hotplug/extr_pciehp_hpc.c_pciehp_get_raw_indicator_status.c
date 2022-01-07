
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;
struct hotplug_slot {int dummy; } ;
struct controller {int dummy; } ;


 int PCI_EXP_SLTCTL ;
 int PCI_EXP_SLTCTL_AIC ;
 int PCI_EXP_SLTCTL_PIC ;
 struct pci_dev* ctrl_dev (struct controller*) ;
 int pci_config_pm_runtime_get (struct pci_dev*) ;
 int pci_config_pm_runtime_put (struct pci_dev*) ;
 int pcie_capability_read_word (struct pci_dev*,int ,int*) ;
 struct controller* to_ctrl (struct hotplug_slot*) ;

int pciehp_get_raw_indicator_status(struct hotplug_slot *hotplug_slot,
        u8 *status)
{
 struct controller *ctrl = to_ctrl(hotplug_slot);
 struct pci_dev *pdev = ctrl_dev(ctrl);
 u16 slot_ctrl;

 pci_config_pm_runtime_get(pdev);
 pcie_capability_read_word(pdev, PCI_EXP_SLTCTL, &slot_ctrl);
 pci_config_pm_runtime_put(pdev);
 *status = (slot_ctrl & (PCI_EXP_SLTCTL_AIC | PCI_EXP_SLTCTL_PIC)) >> 6;
 return 0;
}
