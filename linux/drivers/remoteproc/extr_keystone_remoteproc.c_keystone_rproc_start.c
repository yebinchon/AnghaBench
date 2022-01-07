
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {int bootaddr; struct keystone_rproc* priv; } ;
struct keystone_rproc {int workqueue; int irq_ring; int irq_fault; int dev; } ;


 int INIT_WORK (int *,int ) ;
 int dev_err (int ,char*,int) ;
 int dev_name (int ) ;
 int flush_work (int *) ;
 int free_irq (int ,struct keystone_rproc*) ;
 int handle_event ;
 int keystone_rproc_dsp_boot (struct keystone_rproc*,int ) ;
 int keystone_rproc_exception_interrupt ;
 int keystone_rproc_vring_interrupt ;
 int request_irq (int ,int ,int ,int ,struct keystone_rproc*) ;

__attribute__((used)) static int keystone_rproc_start(struct rproc *rproc)
{
 struct keystone_rproc *ksproc = rproc->priv;
 int ret;

 INIT_WORK(&ksproc->workqueue, handle_event);

 ret = request_irq(ksproc->irq_ring, keystone_rproc_vring_interrupt, 0,
     dev_name(ksproc->dev), ksproc);
 if (ret) {
  dev_err(ksproc->dev, "failed to enable vring interrupt, ret = %d\n",
   ret);
  goto out;
 }

 ret = request_irq(ksproc->irq_fault, keystone_rproc_exception_interrupt,
     0, dev_name(ksproc->dev), ksproc);
 if (ret) {
  dev_err(ksproc->dev, "failed to enable exception interrupt, ret = %d\n",
   ret);
  goto free_vring_irq;
 }

 ret = keystone_rproc_dsp_boot(ksproc, rproc->bootaddr);
 if (ret)
  goto free_exc_irq;

 return 0;

free_exc_irq:
 free_irq(ksproc->irq_fault, ksproc);
free_vring_irq:
 free_irq(ksproc->irq_ring, ksproc);
 flush_work(&ksproc->workqueue);
out:
 return ret;
}
