
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; int end; int flags; } ;
struct pci_dev {struct resource* resource; } ;


 int IORESOURCE_UNSET ;

__attribute__((used)) static void quirk_s3_64M(struct pci_dev *dev)
{
 struct resource *r = &dev->resource[0];

 if ((r->start & 0x3ffffff) || r->end != r->start + 0x3ffffff) {
  r->flags |= IORESOURCE_UNSET;
  r->start = 0;
  r->end = 0x3ffffff;
 }
}
