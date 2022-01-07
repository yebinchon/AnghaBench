
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsl_mc_device_irq {TYPE_1__* msi_desc; } ;
struct fsl_mc_device {struct fsl_mc_device_irq** irqs; } ;
struct TYPE_2__ {int irq; } ;


 int irq_set_affinity_hint (int ,int *) ;

__attribute__((used)) static void unregister_dpio_irq_handlers(struct fsl_mc_device *dpio_dev)
{
 struct fsl_mc_device_irq *irq;

 irq = dpio_dev->irqs[0];


 irq_set_affinity_hint(irq->msi_desc->irq, ((void*)0));
}
