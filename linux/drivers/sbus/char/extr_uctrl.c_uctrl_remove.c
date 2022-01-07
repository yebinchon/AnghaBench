
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uctrl_driver {int regs; int irq; } ;
struct platform_device {int * resource; int dev; } ;


 struct uctrl_driver* dev_get_drvdata (int *) ;
 int free_irq (int ,struct uctrl_driver*) ;
 int kfree (struct uctrl_driver*) ;
 int misc_deregister (int *) ;
 int of_iounmap (int *,int ,int ) ;
 int resource_size (int *) ;
 int uctrl_dev ;

__attribute__((used)) static int uctrl_remove(struct platform_device *op)
{
 struct uctrl_driver *p = dev_get_drvdata(&op->dev);

 if (p) {
  misc_deregister(&uctrl_dev);
  free_irq(p->irq, p);
  of_iounmap(&op->resource[0], p->regs, resource_size(&op->resource[0]));
  kfree(p);
 }
 return 0;
}
