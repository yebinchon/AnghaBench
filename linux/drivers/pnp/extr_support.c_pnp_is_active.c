
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_dev {int dummy; } ;


 int pnp_dma (struct pnp_dev*,int ) ;
 int pnp_irq (struct pnp_dev*,int ) ;
 int pnp_mem_len (struct pnp_dev*,int ) ;
 int pnp_mem_start (struct pnp_dev*,int ) ;
 int pnp_port_len (struct pnp_dev*,int ) ;
 int pnp_port_start (struct pnp_dev*,int ) ;

int pnp_is_active(struct pnp_dev *dev)
{




 if (!pnp_port_start(dev, 0) && pnp_port_len(dev, 0) <= 1 &&
     !pnp_mem_start(dev, 0) && pnp_mem_len(dev, 0) <= 1 &&
     pnp_irq(dev, 0) == -1 && pnp_dma(dev, 0) == -1)
  return 0;
 else
  return 1;
}
