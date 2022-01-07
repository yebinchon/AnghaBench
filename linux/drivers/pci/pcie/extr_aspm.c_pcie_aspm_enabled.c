
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {TYPE_1__* link_state; } ;
struct TYPE_2__ {int aspm_enabled; } ;


 int aspm_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct pci_dev* pci_upstream_bridge (struct pci_dev*) ;

bool pcie_aspm_enabled(struct pci_dev *pdev)
{
 struct pci_dev *bridge = pci_upstream_bridge(pdev);
 bool ret;

 if (!bridge)
  return 0;

 mutex_lock(&aspm_lock);
 ret = bridge->link_state ? !!bridge->link_state->aspm_enabled : 0;
 mutex_unlock(&aspm_lock);

 return ret;
}
