
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport_pc_private {scalar_t__ ecr; } ;
struct parport {scalar_t__ dma; struct parport_pc_private* private_data; } ;


 scalar_t__ PARPORT_DMA_NONE ;
 scalar_t__ get_superio_dma (struct parport*) ;
 scalar_t__ programmable_dma_support (struct parport*) ;

__attribute__((used)) static int parport_dma_probe(struct parport *p)
{
 const struct parport_pc_private *priv = p->private_data;
 if (priv->ecr)
  p->dma = programmable_dma_support(p);
 if (p->dma == PARPORT_DMA_NONE) {



  p->dma = get_superio_dma(p);
 }

 return p->dma;
}
