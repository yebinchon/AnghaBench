
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pnp_dma {unsigned char map; unsigned char flags; } ;
struct TYPE_2__ {struct pnp_dma dma; } ;
struct pnp_option {TYPE_1__ u; } ;
struct pnp_dev {int dummy; } ;


 int ENOMEM ;
 int IORESOURCE_DMA ;
 int dbg_pnp_show_option (struct pnp_dev*,struct pnp_option*) ;
 struct pnp_option* pnp_build_option (struct pnp_dev*,int ,unsigned int) ;

int pnp_register_dma_resource(struct pnp_dev *dev, unsigned int option_flags,
         unsigned char map, unsigned char flags)
{
 struct pnp_option *option;
 struct pnp_dma *dma;

 option = pnp_build_option(dev, IORESOURCE_DMA, option_flags);
 if (!option)
  return -ENOMEM;

 dma = &option->u.dma;
 dma->map = map;
 dma->flags = flags;

 dbg_pnp_show_option(dev, option);
 return 0;
}
