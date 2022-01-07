
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct hotplug_slot {int dummy; } ;
struct controller {TYPE_1__* pcie; } ;
struct TYPE_2__ {struct pci_dev* port; } ;


 int pci_config_pm_runtime_get (struct pci_dev*) ;
 int pci_config_pm_runtime_put (struct pci_dev*) ;
 int pciehp_get_power_status (struct controller*,int *) ;
 struct controller* to_ctrl (struct hotplug_slot*) ;

__attribute__((used)) static int get_power_status(struct hotplug_slot *hotplug_slot, u8 *value)
{
 struct controller *ctrl = to_ctrl(hotplug_slot);
 struct pci_dev *pdev = ctrl->pcie->port;

 pci_config_pm_runtime_get(pdev);
 pciehp_get_power_status(ctrl, value);
 pci_config_pm_runtime_put(pdev);
 return 0;
}
