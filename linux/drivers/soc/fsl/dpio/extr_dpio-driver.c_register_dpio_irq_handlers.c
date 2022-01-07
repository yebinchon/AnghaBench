
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsl_mc_device_irq {TYPE_1__* msi_desc; } ;
struct fsl_mc_device {int dev; struct fsl_mc_device_irq** irqs; } ;
typedef int cpumask_t ;
struct TYPE_2__ {int irq; } ;


 int cpumask_clear (int *) ;
 int cpumask_set_cpu (int,int *) ;
 int dev_err (int *,char*,int,...) ;
 int dev_name (int *) ;
 int devm_request_irq (int *,int ,int ,int ,int ,int *) ;
 int dpio_irq_handler ;
 scalar_t__ irq_set_affinity_hint (int ,int *) ;

__attribute__((used)) static int register_dpio_irq_handlers(struct fsl_mc_device *dpio_dev, int cpu)
{
 int error;
 struct fsl_mc_device_irq *irq;
 cpumask_t mask;

 irq = dpio_dev->irqs[0];
 error = devm_request_irq(&dpio_dev->dev,
     irq->msi_desc->irq,
     dpio_irq_handler,
     0,
     dev_name(&dpio_dev->dev),
     &dpio_dev->dev);
 if (error < 0) {
  dev_err(&dpio_dev->dev,
   "devm_request_irq() failed: %d\n",
   error);
  return error;
 }


 cpumask_clear(&mask);
 cpumask_set_cpu(cpu, &mask);
 if (irq_set_affinity_hint(irq->msi_desc->irq, &mask))
  dev_err(&dpio_dev->dev,
   "irq_set_affinity failed irq %d cpu %d\n",
   irq->msi_desc->irq, cpu);

 return 0;
}
