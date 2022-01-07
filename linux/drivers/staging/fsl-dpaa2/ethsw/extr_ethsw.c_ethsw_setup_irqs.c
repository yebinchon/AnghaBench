
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct fsl_mc_device_irq {TYPE_2__* msi_desc; } ;
struct TYPE_3__ {scalar_t__ irq_count; } ;
struct device {int dummy; } ;
struct fsl_mc_device {struct fsl_mc_device_irq** irqs; TYPE_1__ obj_desc; struct device dev; } ;
struct ethsw_core {int dpsw_handle; int mc_io; } ;
struct TYPE_4__ {int irq; } ;


 int DPSW_IRQ_EVENT_LINK_CHANGED ;
 size_t DPSW_IRQ_INDEX_IF ;
 scalar_t__ DPSW_IRQ_NUM ;
 int EINVAL ;
 int IRQF_NO_SUSPEND ;
 int IRQF_ONESHOT ;
 scalar_t__ WARN_ON (int) ;
 int dev_err (struct device*,char*,...) ;
 struct ethsw_core* dev_get_drvdata (struct device*) ;
 int dev_name (struct device*) ;
 int devm_free_irq (struct device*,int ,struct device*) ;
 int devm_request_threaded_irq (struct device*,int ,int *,int ,int,int ,struct device*) ;
 int dpsw_set_irq_enable (int ,int ,int ,size_t,int) ;
 int dpsw_set_irq_mask (int ,int ,int ,size_t,int ) ;
 int ethsw_irq0_handler_thread ;
 int fsl_mc_allocate_irqs (struct fsl_mc_device*) ;
 int fsl_mc_free_irqs (struct fsl_mc_device*) ;

__attribute__((used)) static int ethsw_setup_irqs(struct fsl_mc_device *sw_dev)
{
 struct device *dev = &sw_dev->dev;
 struct ethsw_core *ethsw = dev_get_drvdata(dev);
 u32 mask = DPSW_IRQ_EVENT_LINK_CHANGED;
 struct fsl_mc_device_irq *irq;
 int err;

 err = fsl_mc_allocate_irqs(sw_dev);
 if (err) {
  dev_err(dev, "MC irqs allocation failed\n");
  return err;
 }

 if (WARN_ON(sw_dev->obj_desc.irq_count != DPSW_IRQ_NUM)) {
  err = -EINVAL;
  goto free_irq;
 }

 err = dpsw_set_irq_enable(ethsw->mc_io, 0, ethsw->dpsw_handle,
      DPSW_IRQ_INDEX_IF, 0);
 if (err) {
  dev_err(dev, "dpsw_set_irq_enable err %d\n", err);
  goto free_irq;
 }

 irq = sw_dev->irqs[DPSW_IRQ_INDEX_IF];

 err = devm_request_threaded_irq(dev, irq->msi_desc->irq,
     ((void*)0),
     ethsw_irq0_handler_thread,
     IRQF_NO_SUSPEND | IRQF_ONESHOT,
     dev_name(dev), dev);
 if (err) {
  dev_err(dev, "devm_request_threaded_irq(): %d\n", err);
  goto free_irq;
 }

 err = dpsw_set_irq_mask(ethsw->mc_io, 0, ethsw->dpsw_handle,
    DPSW_IRQ_INDEX_IF, mask);
 if (err) {
  dev_err(dev, "dpsw_set_irq_mask(): %d\n", err);
  goto free_devm_irq;
 }

 err = dpsw_set_irq_enable(ethsw->mc_io, 0, ethsw->dpsw_handle,
      DPSW_IRQ_INDEX_IF, 1);
 if (err) {
  dev_err(dev, "dpsw_set_irq_enable(): %d\n", err);
  goto free_devm_irq;
 }

 return 0;

free_devm_irq:
 devm_free_irq(dev, irq->msi_desc->irq, dev);
free_irq:
 fsl_mc_free_irqs(sw_dev);
 return err;
}
