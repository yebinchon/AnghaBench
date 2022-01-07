
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_link_state {int root; } ;
struct pci_dev {struct pcie_link_state* link_state; } ;


 scalar_t__ aspm_disabled ;
 int aspm_lock ;
 int down_read (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_bus_sem ;
 int pcie_config_aspm_path (struct pcie_link_state*) ;
 int pcie_update_aspm_capable (int ) ;
 int up_read (int *) ;

void pcie_aspm_pm_state_change(struct pci_dev *pdev)
{
 struct pcie_link_state *link = pdev->link_state;

 if (aspm_disabled || !link)
  return;




 down_read(&pci_bus_sem);
 mutex_lock(&aspm_lock);
 pcie_update_aspm_capable(link->root);
 pcie_config_aspm_path(link);
 mutex_unlock(&aspm_lock);
 up_read(&pci_bus_sem);
}
