
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int flags; scalar_t__ start; scalar_t__ end; int parent; } ;
struct pci_dev {struct resource* resource; } ;


 int IORESOURCE_UNSET ;
 int pci_info (struct pci_dev*,char*,int,struct resource*) ;
 int release_resource (struct resource*) ;
 scalar_t__ resource_size (struct resource*) ;

void pci_release_resource(struct pci_dev *dev, int resno)
{
 struct resource *res = dev->resource + resno;

 pci_info(dev, "BAR %d: releasing %pR\n", resno, res);

 if (!res->parent)
  return;

 release_resource(res);
 res->end = resource_size(res) - 1;
 res->start = 0;
 res->flags |= IORESOURCE_UNSET;
}
