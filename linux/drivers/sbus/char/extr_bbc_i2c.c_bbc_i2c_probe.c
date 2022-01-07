
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * irqs; } ;
struct platform_device {int dev; int * resource; TYPE_1__ archdata; } ;
struct bbc_i2c_bus {scalar_t__ i2c_control_regs; scalar_t__ i2c_bussel_reg; } ;


 int EINVAL ;
 struct bbc_i2c_bus* attach_one_i2c (struct platform_device*,int) ;
 int bbc_envctrl_init (struct bbc_i2c_bus*) ;
 int dev_set_drvdata (int *,struct bbc_i2c_bus*) ;
 int free_irq (int ,struct bbc_i2c_bus*) ;
 int kfree (struct bbc_i2c_bus*) ;
 int of_iounmap (int *,scalar_t__,int) ;

__attribute__((used)) static int bbc_i2c_probe(struct platform_device *op)
{
 struct bbc_i2c_bus *bp;
 int err, index = 0;

 bp = attach_one_i2c(op, index);
 if (!bp)
  return -EINVAL;

 err = bbc_envctrl_init(bp);
 if (err) {
  free_irq(op->archdata.irqs[0], bp);
  if (bp->i2c_bussel_reg)
   of_iounmap(&op->resource[0], bp->i2c_bussel_reg, 1);
  if (bp->i2c_control_regs)
   of_iounmap(&op->resource[1], bp->i2c_control_regs, 2);
  kfree(bp);
 } else {
  dev_set_drvdata(&op->dev, bp);
 }

 return err;
}
