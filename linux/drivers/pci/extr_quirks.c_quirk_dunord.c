
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int end; scalar_t__ start; int flags; } ;
struct pci_dev {struct resource* resource; } ;


 int IORESOURCE_UNSET ;

__attribute__((used)) static void quirk_dunord(struct pci_dev *dev)
{
 struct resource *r = &dev->resource[1];

 r->flags |= IORESOURCE_UNSET;
 r->start = 0;
 r->end = 0xffffff;
}
