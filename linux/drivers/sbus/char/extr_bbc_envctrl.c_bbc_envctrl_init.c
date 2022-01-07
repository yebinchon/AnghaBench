
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct bbc_i2c_bus {int dummy; } ;


 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int attach_one_fan (struct bbc_i2c_bus*,struct platform_device*,int ) ;
 int attach_one_temp (struct bbc_i2c_bus*,struct platform_device*,int ) ;
 struct platform_device* bbc_i2c_getdev (struct bbc_i2c_bus*,int ) ;
 int destroy_all_fans (struct bbc_i2c_bus*) ;
 int destroy_all_temps (struct bbc_i2c_bus*) ;
 int kenvctrld ;
 int * kenvctrld_task ;
 int * kthread_run (int ,int *,char*) ;
 scalar_t__ of_node_name_eq (int ,char*) ;

int bbc_envctrl_init(struct bbc_i2c_bus *bp)
{
 struct platform_device *op;
 int temp_index = 0;
 int fan_index = 0;
 int devidx = 0;

 while ((op = bbc_i2c_getdev(bp, devidx++)) != ((void*)0)) {
  if (of_node_name_eq(op->dev.of_node, "temperature"))
   attach_one_temp(bp, op, temp_index++);
  if (of_node_name_eq(op->dev.of_node, "fan-control"))
   attach_one_fan(bp, op, fan_index++);
 }
 if (temp_index != 0 && fan_index != 0) {
  kenvctrld_task = kthread_run(kenvctrld, ((void*)0), "kenvctrld");
  if (IS_ERR(kenvctrld_task)) {
   int err = PTR_ERR(kenvctrld_task);

   kenvctrld_task = ((void*)0);
   destroy_all_temps(bp);
   destroy_all_fans(bp);
   return err;
  }
 }

 return 0;
}
