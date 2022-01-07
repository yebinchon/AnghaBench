
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct lp855x {TYPE_2__* dev; scalar_t__ supply; TYPE_3__* bl; } ;
struct i2c_client {int dummy; } ;
struct TYPE_4__ {scalar_t__ brightness; } ;
struct TYPE_6__ {TYPE_1__ props; } ;
struct TYPE_5__ {int kobj; } ;


 int backlight_update_status (TYPE_3__*) ;
 struct lp855x* i2c_get_clientdata (struct i2c_client*) ;
 int lp855x_attr_group ;
 int regulator_disable (scalar_t__) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int lp855x_remove(struct i2c_client *cl)
{
 struct lp855x *lp = i2c_get_clientdata(cl);

 lp->bl->props.brightness = 0;
 backlight_update_status(lp->bl);
 if (lp->supply)
  regulator_disable(lp->supply);
 sysfs_remove_group(&lp->dev->kobj, &lp855x_attr_group);

 return 0;
}
