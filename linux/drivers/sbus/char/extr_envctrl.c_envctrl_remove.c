
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int * resource; } ;
struct TYPE_2__ {int tables; } ;


 int ENVCTRL_MAX_CPU ;
 int envctrl_dev ;
 int i2c ;
 TYPE_1__* i2c_childlist ;
 int kenvctrld_task ;
 int kfree (int ) ;
 int kthread_stop (int ) ;
 int misc_deregister (int *) ;
 int of_iounmap (int *,int ,int) ;

__attribute__((used)) static int envctrl_remove(struct platform_device *op)
{
 int index;

 kthread_stop(kenvctrld_task);

 of_iounmap(&op->resource[0], i2c, 0x2);
 misc_deregister(&envctrl_dev);

 for (index = 0; index < ENVCTRL_MAX_CPU * 2; index++)
  kfree(i2c_childlist[index].tables);

 return 0;
}
