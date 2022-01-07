
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct max8998_data {TYPE_1__* iodev; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {struct i2c_client* i2c; } ;


 int max8998_get_enable_register (struct regulator_dev*,int*,int*) ;
 int max8998_update_reg (struct i2c_client*,int,int,int) ;
 struct max8998_data* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int max8998_ldo_enable(struct regulator_dev *rdev)
{
 struct max8998_data *max8998 = rdev_get_drvdata(rdev);
 struct i2c_client *i2c = max8998->iodev->i2c;
 int reg, shift = 8, ret;

 ret = max8998_get_enable_register(rdev, &reg, &shift);
 if (ret)
  return ret;

 return max8998_update_reg(i2c, reg, 1<<shift, 1<<shift);
}
