
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_epf_driver {scalar_t__ id_table; } ;
struct pci_epf {int name; } ;
struct device_driver {int name; } ;
struct device {int dummy; } ;


 int pci_epf_match_id (scalar_t__,struct pci_epf*) ;
 int strcmp (int ,int ) ;
 struct pci_epf* to_pci_epf (struct device*) ;
 struct pci_epf_driver* to_pci_epf_driver (struct device_driver*) ;

__attribute__((used)) static int pci_epf_device_match(struct device *dev, struct device_driver *drv)
{
 struct pci_epf *epf = to_pci_epf(dev);
 struct pci_epf_driver *driver = to_pci_epf_driver(drv);

 if (driver->id_table)
  return pci_epf_match_id(driver->id_table, epf);

 return !strcmp(epf->name, drv->name);
}
