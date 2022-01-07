
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int flags; TYPE_1__* parent; } ;
struct TYPE_2__ {int flags; } ;


 int IORESOURCE_IO ;
 unsigned long IORESOURCE_MEM ;
 int IORESOURCE_PREFETCH ;

__attribute__((used)) static bool pci_need_to_release(unsigned long mask, struct resource *res)
{
 if (res->flags & IORESOURCE_IO)
  return !!(mask & IORESOURCE_IO);


 if (res->flags & IORESOURCE_PREFETCH) {
  if (mask & IORESOURCE_PREFETCH)
   return 1;

  else if ((mask & IORESOURCE_MEM) &&
    !(res->parent->flags & IORESOURCE_PREFETCH))
   return 1;
  else
   return 0;
 }

 if (res->flags & IORESOURCE_MEM)
  return !!(mask & IORESOURCE_MEM);

 return 0;
}
