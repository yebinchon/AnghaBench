
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int parent; int flags; } ;
struct pci_bus {int dev; struct resource busn_res; } ;


 int dev_info (int *,char*,struct resource*,char*) ;
 int release_resource (struct resource*) ;

void pci_bus_release_busn_res(struct pci_bus *b)
{
 struct resource *res = &b->busn_res;
 int ret;

 if (!res->flags || !res->parent)
  return;

 ret = release_resource(res);
 dev_info(&b->dev, "busn_res: %pR %s released\n",
   res, ret ? "can not be" : "is");
}
