
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pm; } ;
struct pci_driver {TYPE_1__ driver; int remove; int probe; } ;


 int pci_register_driver (struct pci_driver*) ;
 int ssb_pcihost_pm_ops ;
 int ssb_pcihost_probe ;
 int ssb_pcihost_remove ;

int ssb_pcihost_register(struct pci_driver *driver)
{
 driver->probe = ssb_pcihost_probe;
 driver->remove = ssb_pcihost_remove;




 return pci_register_driver(driver);
}
