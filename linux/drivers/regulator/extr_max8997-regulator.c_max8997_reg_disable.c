
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct max8997_data {TYPE_1__* iodev; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {struct i2c_client* i2c; } ;


 int max8997_get_enable_register (struct regulator_dev*,int*,int*,int*) ;
 int max8997_update_reg (struct i2c_client*,int,int,int) ;
 struct max8997_data* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int max8997_reg_disable(struct regulator_dev *rdev)
{
 struct max8997_data *max8997 = rdev_get_drvdata(rdev);
 struct i2c_client *i2c = max8997->iodev->i2c;
 int ret, reg, mask, pattern;

 ret = max8997_get_enable_register(rdev, &reg, &mask, &pattern);
 if (ret)
  return ret;

 return max8997_update_reg(i2c, reg, ~pattern, mask);
}
