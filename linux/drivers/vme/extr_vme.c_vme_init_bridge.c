
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vme_bridge {int irq_mtx; int lm_resources; int dma_resources; int slave_resources; int master_resources; int vme_error_handlers; } ;


 int INIT_LIST_HEAD (int *) ;
 int mutex_init (int *) ;

struct vme_bridge *vme_init_bridge(struct vme_bridge *bridge)
{
 INIT_LIST_HEAD(&bridge->vme_error_handlers);
 INIT_LIST_HEAD(&bridge->master_resources);
 INIT_LIST_HEAD(&bridge->slave_resources);
 INIT_LIST_HEAD(&bridge->dma_resources);
 INIT_LIST_HEAD(&bridge->lm_resources);
 mutex_init(&bridge->irq_mtx);

 return bridge;
}
