
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_epf_driver {int driver; } ;


 int driver_unregister (int *) ;
 int pci_epf_remove_cfs (struct pci_epf_driver*) ;

void pci_epf_unregister_driver(struct pci_epf_driver *driver)
{
 pci_epf_remove_cfs(driver);
 driver_unregister(&driver->driver);
}
