
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_bus {int dev; TYPE_1__* self; struct pci_bus* parent; } ;
struct irq_domain {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 struct irq_domain* dev_get_msi_domain (int *) ;
 int dev_set_msi_domain (int *,struct irq_domain*) ;
 struct irq_domain* pci_host_bridge_msi_domain (struct pci_bus*) ;
 int pci_is_root_bus (struct pci_bus*) ;

__attribute__((used)) static void pci_set_bus_msi_domain(struct pci_bus *bus)
{
 struct irq_domain *d;
 struct pci_bus *b;






 for (b = bus, d = ((void*)0); !d && !pci_is_root_bus(b); b = b->parent) {
  if (b->self)
   d = dev_get_msi_domain(&b->self->dev);
 }

 if (!d)
  d = pci_host_bridge_msi_domain(b);

 dev_set_msi_domain(&bus->dev, d);
}
