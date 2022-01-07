
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {scalar_t__ start; } ;
struct pci_dev {struct resource* resource; } ;


 int PCI_ROM_RESOURCE ;
 scalar_t__ resource_contains (struct resource*,struct resource*) ;

struct resource *pci_find_resource(struct pci_dev *dev, struct resource *res)
{
 int i;

 for (i = 0; i < PCI_ROM_RESOURCE; i++) {
  struct resource *r = &dev->resource[i];

  if (r->start && resource_contains(r, res))
   return r;
 }

 return ((void*)0);
}
