
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct bbc_i2c_bus {int fans; } ;
struct bbc_fan_control {int index; int psupply_fan_on; int cpu_fan_speed; int system_fan_speed; int bp_list; int glob_list; int client; } ;


 int FAN_SPEED_MAX ;
 int FAN_SPEED_MIN ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int all_fans ;
 int bbc_i2c_attach (struct bbc_i2c_bus*,struct platform_device*) ;
 int kfree (struct bbc_fan_control*) ;
 struct bbc_fan_control* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int set_fan_speeds (struct bbc_fan_control*) ;

__attribute__((used)) static void attach_one_fan(struct bbc_i2c_bus *bp, struct platform_device *op,
      int fan_idx)
{
 struct bbc_fan_control *fp;

 fp = kzalloc(sizeof(*fp), GFP_KERNEL);
 if (!fp)
  return;

 INIT_LIST_HEAD(&fp->bp_list);
 INIT_LIST_HEAD(&fp->glob_list);

 fp->client = bbc_i2c_attach(bp, op);
 if (!fp->client) {
  kfree(fp);
  return;
 }

 fp->index = fan_idx;

 list_add(&fp->glob_list, &all_fans);
 list_add(&fp->bp_list, &bp->fans);







 fp->psupply_fan_on = 1;
 fp->cpu_fan_speed = (FAN_SPEED_MAX - FAN_SPEED_MIN) / 2;
 fp->cpu_fan_speed += FAN_SPEED_MIN;
 fp->system_fan_speed = (FAN_SPEED_MAX - FAN_SPEED_MIN) / 2;
 fp->system_fan_speed += FAN_SPEED_MIN;

 set_fan_speeds(fp);
}
