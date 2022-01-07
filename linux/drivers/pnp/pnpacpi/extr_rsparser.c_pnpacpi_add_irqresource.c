
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int flags; int start; } ;
struct pnp_dev {int dummy; } ;


 int IORESOURCE_DISABLED ;
 int pcibios_penalize_isa_irq (int ,int) ;
 int pnp_add_resource (struct pnp_dev*,struct resource*) ;

__attribute__((used)) static void pnpacpi_add_irqresource(struct pnp_dev *dev, struct resource *r)
{
 if (!(r->flags & IORESOURCE_DISABLED))
  pcibios_penalize_isa_irq(r->start, 1);

 pnp_add_resource(dev, r);
}
