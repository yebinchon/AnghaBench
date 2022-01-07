
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_epf {int dev; } ;


 int device_unregister (int *) ;

void pci_epf_destroy(struct pci_epf *epf)
{
 device_unregister(&epf->dev);
}
