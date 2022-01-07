
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcie_link_state {scalar_t__ clkpm_capable; int aspm_disable; } ;
struct pci_dev {struct pcie_link_state* link_state; TYPE_1__* bus; } ;
struct TYPE_2__ {struct pci_dev* self; } ;


 int ASPM_STATE_L0S ;
 int ASPM_STATE_L1 ;
 int EINVAL ;
 int EPERM ;
 int PCIE_LINK_STATE_CLKPM ;
 int PCIE_LINK_STATE_L0S ;
 int PCIE_LINK_STATE_L1 ;
 scalar_t__ aspm_disabled ;
 int aspm_lock ;
 int down_read (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_bus_sem ;
 int pci_is_pcie (struct pci_dev*) ;
 int pci_warn (struct pci_dev*,char*) ;
 int pcie_config_aspm_link (struct pcie_link_state*,int ) ;
 scalar_t__ pcie_downstream_port (struct pci_dev*) ;
 int pcie_set_clkpm (struct pcie_link_state*,int ) ;
 int policy_to_aspm_state (struct pcie_link_state*) ;
 int up_read (int *) ;

__attribute__((used)) static int __pci_disable_link_state(struct pci_dev *pdev, int state, bool sem)
{
 struct pci_dev *parent = pdev->bus->self;
 struct pcie_link_state *link;

 if (!pci_is_pcie(pdev))
  return 0;

 if (pcie_downstream_port(pdev))
  parent = pdev;
 if (!parent || !parent->link_state)
  return -EINVAL;
 if (aspm_disabled) {
  pci_warn(pdev, "can't disable ASPM; OS doesn't have ASPM control\n");
  return -EPERM;
 }

 if (sem)
  down_read(&pci_bus_sem);
 mutex_lock(&aspm_lock);
 link = parent->link_state;
 if (state & PCIE_LINK_STATE_L0S)
  link->aspm_disable |= ASPM_STATE_L0S;
 if (state & PCIE_LINK_STATE_L1)
  link->aspm_disable |= ASPM_STATE_L1;
 pcie_config_aspm_link(link, policy_to_aspm_state(link));

 if (state & PCIE_LINK_STATE_CLKPM) {
  link->clkpm_capable = 0;
  pcie_set_clkpm(link, 0);
 }
 mutex_unlock(&aspm_lock);
 if (sem)
  up_read(&pci_bus_sem);

 return 0;
}
