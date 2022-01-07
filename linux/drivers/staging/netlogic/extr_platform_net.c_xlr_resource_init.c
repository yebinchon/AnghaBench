
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {char* name; int start; int end; int flags; } ;


 int CPHYSADDR (int ) ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 int nlm_mmio_base (int) ;

__attribute__((used)) static void xlr_resource_init(struct resource *res, int offset, int irq)
{
 res->name = "gmac";

 res->start = CPHYSADDR(nlm_mmio_base(offset));
 res->end = res->start + 0xfff;
 res->flags = IORESOURCE_MEM;

 res++;
 res->name = "gmac";
 res->start = irq;
 res->end = irq;
 res->flags = IORESOURCE_IRQ;
}
