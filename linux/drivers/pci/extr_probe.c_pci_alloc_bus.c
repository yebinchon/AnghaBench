
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int domain_nr; void* cur_bus_speed; void* max_bus_speed; int resources; int slots; int devices; int children; int node; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 void* PCI_SPEED_UNKNOWN ;
 struct pci_bus* kzalloc (int,int ) ;

__attribute__((used)) static struct pci_bus *pci_alloc_bus(struct pci_bus *parent)
{
 struct pci_bus *b;

 b = kzalloc(sizeof(*b), GFP_KERNEL);
 if (!b)
  return ((void*)0);

 INIT_LIST_HEAD(&b->node);
 INIT_LIST_HEAD(&b->children);
 INIT_LIST_HEAD(&b->devices);
 INIT_LIST_HEAD(&b->slots);
 INIT_LIST_HEAD(&b->resources);
 b->max_bus_speed = PCI_SPEED_UNKNOWN;
 b->cur_bus_speed = PCI_SPEED_UNKNOWN;




 return b;
}
