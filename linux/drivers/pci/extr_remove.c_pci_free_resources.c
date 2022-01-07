
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {scalar_t__ parent; } ;
struct pci_dev {struct resource* resource; } ;


 int PCI_NUM_RESOURCES ;
 int release_resource (struct resource*) ;

__attribute__((used)) static void pci_free_resources(struct pci_dev *dev)
{
 int i;

 for (i = 0; i < PCI_NUM_RESOURCES; i++) {
  struct resource *res = dev->resource + i;
  if (res->parent)
   release_resource(res);
 }
}
