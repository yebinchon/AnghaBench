
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_driver {int dummy; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int match_driver; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 struct pci_device_id* pci_match_device (struct pci_driver*,struct pci_dev*) ;
 struct pci_dev* to_pci_dev (struct device*) ;
 struct pci_driver* to_pci_driver (struct device_driver*) ;

__attribute__((used)) static int pci_bus_match(struct device *dev, struct device_driver *drv)
{
 struct pci_dev *pci_dev = to_pci_dev(dev);
 struct pci_driver *pci_drv;
 const struct pci_device_id *found_id;

 if (!pci_dev->match_driver)
  return 0;

 pci_drv = to_pci_driver(drv);
 found_id = pci_match_device(pci_drv, pci_dev);
 if (found_id)
  return 1;

 return 0;
}
