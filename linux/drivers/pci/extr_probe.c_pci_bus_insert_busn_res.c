
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int start; int end; int name; int flags; } ;
struct pci_bus {int dev; TYPE_1__* parent; struct resource busn_res; } ;
struct TYPE_2__ {struct resource busn_res; } ;


 int IORESOURCE_BUS ;
 int IORESOURCE_PCI_FIXED ;
 int dev_info (int *,char*,struct resource*,char*,struct resource*,int ,struct resource*) ;
 struct resource* get_pci_domain_busn_res (int ) ;
 int pci_domain_nr (struct pci_bus*) ;
 scalar_t__ pci_is_root_bus (struct pci_bus*) ;
 struct resource* request_resource_conflict (struct resource*,struct resource*) ;

int pci_bus_insert_busn_res(struct pci_bus *b, int bus, int bus_max)
{
 struct resource *res = &b->busn_res;
 struct resource *parent_res, *conflict;

 res->start = bus;
 res->end = bus_max;
 res->flags = IORESOURCE_BUS;

 if (!pci_is_root_bus(b))
  parent_res = &b->parent->busn_res;
 else {
  parent_res = get_pci_domain_busn_res(pci_domain_nr(b));
  res->flags |= IORESOURCE_PCI_FIXED;
 }

 conflict = request_resource_conflict(parent_res, res);

 if (conflict)
  dev_info(&b->dev,
      "busn_res: can not insert %pR under %s%pR (conflicts with %s %pR)\n",
       res, pci_is_root_bus(b) ? "domain " : "",
       parent_res, conflict->name, conflict);

 return conflict == ((void*)0);
}
