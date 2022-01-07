
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct regulator_dev {int dummy; } ;
struct max8998_platform_data {int buck2_set3; int buck_voltage_lock; int buck1_set2; int buck1_set1; } ;
struct max8998_data {unsigned int* buck1_vol; int buck1_idx; unsigned int* buck2_vol; int buck2_idx; int dev; TYPE_1__* iodev; } ;
struct i2c_client {int name; } ;
struct TYPE_2__ {struct i2c_client* i2c; struct max8998_platform_data* pdata; } ;


 int ARRAY_SIZE (unsigned int*) ;
 int EINVAL ;




 int buck1_gpio_set (int ,int ,int) ;
 int buck2_gpio_set (int ,int) ;
 int dev_dbg (int ,char*,unsigned int,...) ;
 int gpio_get_value (int ) ;
 int gpio_is_valid (int ) ;
 int max8998_get_voltage_register (struct regulator_dev*,int*,int*,int*) ;
 int max8998_update_reg (struct i2c_client*,int,unsigned int,int) ;
 int max8998_write_reg (struct i2c_client*,int,unsigned int) ;
 struct max8998_data* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int max8998_set_voltage_buck_sel(struct regulator_dev *rdev,
     unsigned selector)
{
 struct max8998_data *max8998 = rdev_get_drvdata(rdev);
 struct max8998_platform_data *pdata = max8998->iodev->pdata;
 struct i2c_client *i2c = max8998->iodev->i2c;
 int buck = rdev_get_id(rdev);
 int reg, shift = 0, mask, ret, j;
 static u8 buck1_last_val;

 ret = max8998_get_voltage_register(rdev, &reg, &shift, &mask);
 if (ret)
  return ret;

 switch (buck) {
 case 131:
  dev_dbg(max8998->dev,
   "BUCK1, selector:%d, buck1_vol1:%d, buck1_vol2:%d\n"
   "buck1_vol3:%d, buck1_vol4:%d\n",
   selector, max8998->buck1_vol[0], max8998->buck1_vol[1],
   max8998->buck1_vol[2], max8998->buck1_vol[3]);

  if (gpio_is_valid(pdata->buck1_set1) &&
      gpio_is_valid(pdata->buck1_set2)) {



   for (j = 0; j < ARRAY_SIZE(max8998->buck1_vol); j++) {
    if (max8998->buck1_vol[j] == selector) {
     max8998->buck1_idx = j;
     buck1_gpio_set(pdata->buck1_set1,
             pdata->buck1_set2, j);
     goto buck1_exit;
    }
   }

   if (pdata->buck_voltage_lock)
    return -EINVAL;


   max8998->buck1_idx = (buck1_last_val % 2) + 2;
   dev_dbg(max8998->dev, "max8998->buck1_idx:%d\n",
    max8998->buck1_idx);
   max8998->buck1_vol[max8998->buck1_idx] = selector;
   ret = max8998_get_voltage_register(rdev, &reg,
          &shift,
          &mask);
   ret = max8998_write_reg(i2c, reg, selector);
   buck1_gpio_set(pdata->buck1_set1,
           pdata->buck1_set2, max8998->buck1_idx);
   buck1_last_val++;
buck1_exit:
   dev_dbg(max8998->dev, "%s: SET1:%d, SET2:%d\n",
    i2c->name, gpio_get_value(pdata->buck1_set1),
    gpio_get_value(pdata->buck1_set2));
   break;
  } else {
   ret = max8998_write_reg(i2c, reg, selector);
  }
  break;

 case 130:
  dev_dbg(max8998->dev,
   "BUCK2, selector:%d buck2_vol1:%d, buck2_vol2:%d\n",
   selector, max8998->buck2_vol[0], max8998->buck2_vol[1]);
  if (gpio_is_valid(pdata->buck2_set3)) {



   for (j = 0; j < ARRAY_SIZE(max8998->buck2_vol); j++) {
    if (max8998->buck2_vol[j] == selector) {
     max8998->buck2_idx = j;
     buck2_gpio_set(pdata->buck2_set3, j);
     goto buck2_exit;
    }
   }

   if (pdata->buck_voltage_lock)
    return -EINVAL;

   max8998_get_voltage_register(rdev,
     &reg, &shift, &mask);
   ret = max8998_write_reg(i2c, reg, selector);
   max8998->buck2_vol[max8998->buck2_idx] = selector;
   buck2_gpio_set(pdata->buck2_set3, max8998->buck2_idx);
buck2_exit:
   dev_dbg(max8998->dev, "%s: SET3:%d\n", i2c->name,
    gpio_get_value(pdata->buck2_set3));
  } else {
   ret = max8998_write_reg(i2c, reg, selector);
  }
  break;

 case 129:
 case 128:
  ret = max8998_update_reg(i2c, reg, selector<<shift,
      mask<<shift);
  break;
 }

 return ret;
}
