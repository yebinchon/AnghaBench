
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {struct device* parent; } ;
struct pci_dev {scalar_t__ current_state; struct device dev; } ;


 scalar_t__ PCI_D3cold ;
 int pm_runtime_barrier (struct device*) ;
 int pm_runtime_get_noresume (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_resume (struct device*) ;

void pci_config_pm_runtime_get(struct pci_dev *pdev)
{
 struct device *dev = &pdev->dev;
 struct device *parent = dev->parent;

 if (parent)
  pm_runtime_get_sync(parent);
 pm_runtime_get_noresume(dev);




 pm_runtime_barrier(dev);





 if (pdev->current_state == PCI_D3cold)
  pm_runtime_resume(dev);
}
