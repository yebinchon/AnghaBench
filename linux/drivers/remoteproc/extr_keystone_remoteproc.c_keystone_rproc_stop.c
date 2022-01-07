
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {struct keystone_rproc* priv; } ;
struct keystone_rproc {int workqueue; int irq_ring; int irq_fault; } ;


 int flush_work (int *) ;
 int free_irq (int ,struct keystone_rproc*) ;
 int keystone_rproc_dsp_reset (struct keystone_rproc*) ;

__attribute__((used)) static int keystone_rproc_stop(struct rproc *rproc)
{
 struct keystone_rproc *ksproc = rproc->priv;

 keystone_rproc_dsp_reset(ksproc);
 free_irq(ksproc->irq_fault, ksproc);
 free_irq(ksproc->irq_ring, ksproc);
 flush_work(&ksproc->workqueue);

 return 0;
}
