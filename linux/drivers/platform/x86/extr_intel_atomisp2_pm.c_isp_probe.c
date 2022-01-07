
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;


 int pm_runtime_allow (int *) ;
 int pm_runtime_put_sync_suspend (int *) ;

__attribute__((used)) static int isp_probe(struct pci_dev *dev, const struct pci_device_id *id)
{
 pm_runtime_allow(&dev->dev);
 pm_runtime_put_sync_suspend(&dev->dev);

 return 0;
}
