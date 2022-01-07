
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct pci_dev {scalar_t__ current_state; struct device dev; } ;
typedef scalar_t__ pci_power_t ;


 scalar_t__ PCI_D3cold ;
 scalar_t__ PCI_D3hot ;
 int device_may_wakeup (struct device*) ;
 scalar_t__ pci_target_state (struct pci_dev*,int ) ;
 scalar_t__ platform_pci_need_resume (struct pci_dev*) ;
 int pm_runtime_suspended (struct device*) ;

bool pci_dev_need_resume(struct pci_dev *pci_dev)
{
 struct device *dev = &pci_dev->dev;
 pci_power_t target_state;

 if (!pm_runtime_suspended(dev) || platform_pci_need_resume(pci_dev))
  return 1;

 target_state = pci_target_state(pci_dev, device_may_wakeup(dev));






 return target_state != pci_dev->current_state &&
  target_state != PCI_D3cold &&
  pci_dev->current_state != PCI_D3hot;
}
