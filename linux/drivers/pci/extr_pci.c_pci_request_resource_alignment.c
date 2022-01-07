
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int flags; scalar_t__ start; scalar_t__ end; } ;
struct pci_dev {struct resource* resource; } ;
typedef scalar_t__ resource_size_t ;


 int IORESOURCE_MEM ;
 int IORESOURCE_PCI_FIXED ;
 int IORESOURCE_SIZEALIGN ;
 int IORESOURCE_STARTALIGN ;
 int IORESOURCE_UNSET ;
 int pci_info (struct pci_dev*,char*,int,struct resource*,unsigned long long) ;
 scalar_t__ resource_size (struct resource*) ;

__attribute__((used)) static void pci_request_resource_alignment(struct pci_dev *dev, int bar,
        resource_size_t align, bool resize)
{
 struct resource *r = &dev->resource[bar];
 resource_size_t size;

 if (!(r->flags & IORESOURCE_MEM))
  return;

 if (r->flags & IORESOURCE_PCI_FIXED) {
  pci_info(dev, "BAR%d %pR: ignoring requested alignment %#llx\n",
    bar, r, (unsigned long long)align);
  return;
 }

 size = resource_size(r);
 if (size >= align)
  return;
 pci_info(dev, "BAR%d %pR: requesting alignment to %#llx\n",
   bar, r, (unsigned long long)align);

 if (resize) {
  r->start = 0;
  r->end = align - 1;
 } else {
  r->flags &= ~IORESOURCE_SIZEALIGN;
  r->flags |= IORESOURCE_STARTALIGN;
  r->start = align;
  r->end = r->start + size - 1;
 }
 r->flags |= IORESOURCE_UNSET;
}
