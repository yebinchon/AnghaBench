
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int pm_runtime_forbid (int *) ;
 int pm_runtime_get_sync (int *) ;

__attribute__((used)) static void isp_remove(struct pci_dev *dev)
{
 pm_runtime_get_sync(&dev->dev);
 pm_runtime_forbid(&dev->dev);
}
