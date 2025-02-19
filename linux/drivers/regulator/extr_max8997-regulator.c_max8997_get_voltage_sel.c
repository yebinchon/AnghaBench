
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct regulator_dev {int dummy; } ;
struct max8997_data {TYPE_1__* iodev; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {struct i2c_client* i2c; } ;


 int max8997_get_voltage_register (struct regulator_dev*,int*,int*,int*) ;
 int max8997_read_reg (struct i2c_client*,int,int*) ;
 struct max8997_data* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int max8997_get_voltage_sel(struct regulator_dev *rdev)
{
 struct max8997_data *max8997 = rdev_get_drvdata(rdev);
 struct i2c_client *i2c = max8997->iodev->i2c;
 int reg, shift, mask, ret;
 u8 val;

 ret = max8997_get_voltage_register(rdev, &reg, &shift, &mask);
 if (ret)
  return ret;

 ret = max8997_read_reg(i2c, reg, &val);
 if (ret)
  return ret;

 val >>= shift;
 val &= mask;

 return val;
}
