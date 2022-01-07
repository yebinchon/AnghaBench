
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {scalar_t__ parent; int flags; } ;
struct pci_dev {struct resource* resource; } ;


 int PCI_BRIDGE_RESOURCES ;
 int PCI_NUM_RESOURCES ;
 int pci_claim_bridge_resource (struct pci_dev*,int) ;

__attribute__((used)) static void pci_claim_bridge_resources(struct pci_dev *dev)
{
 int i;

 for (i = PCI_BRIDGE_RESOURCES; i < PCI_NUM_RESOURCES; i++) {
  struct resource *r = &dev->resource[i];

  if (!r->flags || r->parent)
   continue;

  pci_claim_bridge_resource(dev, i);
 }
}
