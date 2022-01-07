
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {scalar_t__ parent; int flags; } ;
struct pci_dev {struct resource* resource; } ;


 int PCI_BRIDGE_RESOURCES ;
 int pci_claim_resource (struct pci_dev*,int) ;

__attribute__((used)) static void pci_claim_device_resources(struct pci_dev *dev)
{
 int i;

 for (i = 0; i < PCI_BRIDGE_RESOURCES; i++) {
  struct resource *r = &dev->resource[i];

  if (!r->flags || r->parent)
   continue;

  pci_claim_resource(dev, i);
 }
}
