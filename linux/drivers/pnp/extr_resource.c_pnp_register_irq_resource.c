
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int bits; } ;
struct pnp_irq {unsigned char flags; TYPE_2__ map; } ;
struct TYPE_4__ {struct pnp_irq irq; } ;
struct pnp_option {TYPE_1__ u; } ;
struct pnp_dev {int dummy; } ;
typedef TYPE_2__ pnp_irq_mask_t ;


 int ENOMEM ;
 int IORESOURCE_IRQ ;
 int dbg_pnp_show_option (struct pnp_dev*,struct pnp_option*) ;
 int pcibios_penalize_isa_irq (int,int ) ;
 struct pnp_option* pnp_build_option (struct pnp_dev*,int ,unsigned int) ;
 scalar_t__ test_bit (int,int ) ;

int pnp_register_irq_resource(struct pnp_dev *dev, unsigned int option_flags,
         pnp_irq_mask_t *map, unsigned char flags)
{
 struct pnp_option *option;
 struct pnp_irq *irq;

 option = pnp_build_option(dev, IORESOURCE_IRQ, option_flags);
 if (!option)
  return -ENOMEM;

 irq = &option->u.irq;
 irq->map = *map;
 irq->flags = flags;
 dbg_pnp_show_option(dev, option);
 return 0;
}
