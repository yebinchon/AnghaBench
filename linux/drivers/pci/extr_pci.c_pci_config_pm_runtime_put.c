
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {struct device* parent; } ;
struct pci_dev {struct device dev; } ;


 int pm_runtime_put (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;

void pci_config_pm_runtime_put(struct pci_dev *pdev)
{
 struct device *dev = &pdev->dev;
 struct device *parent = dev->parent;

 pm_runtime_put(dev);
 if (parent)
  pm_runtime_put_sync(parent);
}
