
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_mc_device {int dummy; } ;


 int fsl_mc_free_irqs (struct fsl_mc_device*) ;
 int unregister_dpio_irq_handlers (struct fsl_mc_device*) ;

__attribute__((used)) static void dpio_teardown_irqs(struct fsl_mc_device *dpio_dev)
{
 unregister_dpio_irq_handlers(dpio_dev);
 fsl_mc_free_irqs(dpio_dev);
}
