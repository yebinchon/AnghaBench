
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bbc_i2c_bus {int dummy; } ;


 int destroy_all_fans (struct bbc_i2c_bus*) ;
 int destroy_all_temps (struct bbc_i2c_bus*) ;
 scalar_t__ kenvctrld_task ;
 int kthread_stop (scalar_t__) ;

void bbc_envctrl_cleanup(struct bbc_i2c_bus *bp)
{
 if (kenvctrld_task)
  kthread_stop(kenvctrld_task);

 destroy_all_temps(bp);
 destroy_all_fans(bp);
}
