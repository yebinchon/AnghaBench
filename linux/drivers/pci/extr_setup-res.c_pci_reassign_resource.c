
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int flags; int parent; } ;
struct pci_dev {struct resource* resource; } ;
typedef scalar_t__ resource_size_t ;


 int EINVAL ;
 int IORESOURCE_PCI_FIXED ;
 unsigned long IORESOURCE_STARTALIGN ;
 unsigned long IORESOURCE_UNSET ;
 int PCI_BRIDGE_RESOURCES ;
 int _pci_assign_resource (struct pci_dev*,int,scalar_t__,scalar_t__) ;
 int pci_info (struct pci_dev*,char*,int,struct resource*,...) ;
 int pci_update_resource (struct pci_dev*,int) ;
 scalar_t__ resource_size (struct resource*) ;

int pci_reassign_resource(struct pci_dev *dev, int resno, resource_size_t addsize,
   resource_size_t min_align)
{
 struct resource *res = dev->resource + resno;
 unsigned long flags;
 resource_size_t new_size;
 int ret;

 if (res->flags & IORESOURCE_PCI_FIXED)
  return 0;

 flags = res->flags;
 res->flags |= IORESOURCE_UNSET;
 if (!res->parent) {
  pci_info(dev, "BAR %d: can't reassign an unassigned resource %pR\n",
    resno, res);
  return -EINVAL;
 }


 new_size = resource_size(res) + addsize;
 ret = _pci_assign_resource(dev, resno, new_size, min_align);
 if (ret) {
  res->flags = flags;
  pci_info(dev, "BAR %d: %pR (failed to expand by %#llx)\n",
    resno, res, (unsigned long long) addsize);
  return ret;
 }

 res->flags &= ~IORESOURCE_UNSET;
 res->flags &= ~IORESOURCE_STARTALIGN;
 pci_info(dev, "BAR %d: reassigned %pR (expanded by %#llx)\n",
   resno, res, (unsigned long long) addsize);
 if (resno < PCI_BRIDGE_RESOURCES)
  pci_update_resource(dev, resno);

 return 0;
}
