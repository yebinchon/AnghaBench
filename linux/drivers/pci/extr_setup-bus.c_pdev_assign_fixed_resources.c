
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int flags; scalar_t__ parent; } ;
struct pci_dev {struct pci_bus* bus; struct resource* resource; } ;
struct pci_bus {struct pci_bus* parent; } ;


 int IORESOURCE_IO ;
 int IORESOURCE_MEM ;
 int IORESOURCE_PCI_FIXED ;
 int PCI_NUM_RESOURCES ;
 int assign_fixed_resource_on_bus (struct pci_bus*,struct resource*) ;

__attribute__((used)) static void pdev_assign_fixed_resources(struct pci_dev *dev)
{
 int i;

 for (i = 0; i < PCI_NUM_RESOURCES; i++) {
  struct pci_bus *b;
  struct resource *r = &dev->resource[i];

  if (r->parent || !(r->flags & IORESOURCE_PCI_FIXED) ||
      !(r->flags & (IORESOURCE_IO | IORESOURCE_MEM)))
   continue;

  b = dev->bus;
  while (b && !r->parent) {
   assign_fixed_resource_on_bus(b, r);
   b = b->parent;
  }
 }
}
