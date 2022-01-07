
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * irqs; } ;
struct platform_device {int * resource; TYPE_1__ archdata; int dev; } ;
struct bbc_i2c_bus {scalar_t__ i2c_control_regs; scalar_t__ i2c_bussel_reg; } ;


 int bbc_envctrl_cleanup (struct bbc_i2c_bus*) ;
 struct bbc_i2c_bus* dev_get_drvdata (int *) ;
 int free_irq (int ,struct bbc_i2c_bus*) ;
 int kfree (struct bbc_i2c_bus*) ;
 int of_iounmap (int *,scalar_t__,int) ;

__attribute__((used)) static int bbc_i2c_remove(struct platform_device *op)
{
 struct bbc_i2c_bus *bp = dev_get_drvdata(&op->dev);

 bbc_envctrl_cleanup(bp);

 free_irq(op->archdata.irqs[0], bp);

 if (bp->i2c_bussel_reg)
  of_iounmap(&op->resource[0], bp->i2c_bussel_reg, 1);
 if (bp->i2c_control_regs)
  of_iounmap(&op->resource[1], bp->i2c_control_regs, 2);

 kfree(bp);

 return 0;
}
