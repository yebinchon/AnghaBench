
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parport_pc_private {int dma_handle; scalar_t__ dma_buf; int list; } ;
struct parport_operations {int dma_handle; scalar_t__ dma_buf; int list; } ;
struct parport {scalar_t__ dma; scalar_t__ irq; int size; int modes; struct parport_pc_private* private_data; TYPE_1__* physport; scalar_t__ base_hi; scalar_t__ base; struct parport_pc_private* ops; } ;
struct TYPE_2__ {int dev; } ;


 int PAGE_SIZE ;
 scalar_t__ PARPORT_DMA_NONE ;
 scalar_t__ PARPORT_IRQ_NONE ;
 int PARPORT_MODE_ECP ;
 int dma_free_coherent (int ,int ,scalar_t__,int ) ;
 int free_dma (scalar_t__) ;
 int free_irq (scalar_t__,struct parport*) ;
 int kfree (struct parport_pc_private*) ;
 int list_del_init (int *) ;
 int parport_del_port (struct parport*) ;
 int parport_remove_port (struct parport*) ;
 int ports_lock ;
 int release_region (scalar_t__,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void parport_pc_unregister_port(struct parport *p)
{
 struct parport_pc_private *priv = p->private_data;
 struct parport_operations *ops = p->ops;

 parport_remove_port(p);
 spin_lock(&ports_lock);
 list_del_init(&priv->list);
 spin_unlock(&ports_lock);




 if (p->irq != PARPORT_IRQ_NONE)
  free_irq(p->irq, p);
 release_region(p->base, 3);
 if (p->size > 3)
  release_region(p->base + 3, p->size - 3);
 if (p->modes & PARPORT_MODE_ECP)
  release_region(p->base_hi, 3);






 kfree(p->private_data);
 parport_del_port(p);
 kfree(ops);
}
