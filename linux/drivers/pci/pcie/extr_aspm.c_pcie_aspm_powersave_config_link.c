
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_link_state {int dummy; } ;
struct pci_dev {struct pcie_link_state* link_state; } ;


 scalar_t__ POLICY_POWERSAVE ;
 scalar_t__ POLICY_POWER_SUPERSAVE ;
 scalar_t__ aspm_disabled ;
 int aspm_lock ;
 scalar_t__ aspm_policy ;
 int down_read (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_bus_sem ;
 int pcie_config_aspm_path (struct pcie_link_state*) ;
 int pcie_set_clkpm (struct pcie_link_state*,int ) ;
 int policy_to_clkpm_state (struct pcie_link_state*) ;
 int up_read (int *) ;

void pcie_aspm_powersave_config_link(struct pci_dev *pdev)
{
 struct pcie_link_state *link = pdev->link_state;

 if (aspm_disabled || !link)
  return;

 if (aspm_policy != POLICY_POWERSAVE &&
     aspm_policy != POLICY_POWER_SUPERSAVE)
  return;

 down_read(&pci_bus_sem);
 mutex_lock(&aspm_lock);
 pcie_config_aspm_path(link);
 pcie_set_clkpm(link, policy_to_clkpm_state(link));
 mutex_unlock(&aspm_lock);
 up_read(&pci_bus_sem);
}
