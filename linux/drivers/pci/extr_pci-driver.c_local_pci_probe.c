
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_driver {int (* probe ) (struct pci_dev*,int ) ;} ;
struct device {int dummy; } ;
struct pci_dev {struct pci_driver* driver; struct device dev; } ;
struct drv_dev_and_id {int id; struct pci_driver* drv; struct pci_dev* dev; } ;


 int dev_warn (struct device*,char*,int) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 int stub1 (struct pci_dev*,int ) ;

__attribute__((used)) static long local_pci_probe(void *_ddi)
{
 struct drv_dev_and_id *ddi = _ddi;
 struct pci_dev *pci_dev = ddi->dev;
 struct pci_driver *pci_drv = ddi->drv;
 struct device *dev = &pci_dev->dev;
 int rc;
 pm_runtime_get_sync(dev);
 pci_dev->driver = pci_drv;
 rc = pci_drv->probe(pci_dev, ddi->id);
 if (!rc)
  return rc;
 if (rc < 0) {
  pci_dev->driver = ((void*)0);
  pm_runtime_put_sync(dev);
  return rc;
 }




 dev_warn(dev, "Driver probe function unexpectedly returned %d\n", rc);
 return 0;
}
