
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk808_regulator_data {struct gpio_desc** dvs_gpio; } ;
struct regulator_dev {int dummy; } ;
struct gpio_desc {int dummy; } ;


 struct rk808_regulator_data* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int regulator_set_voltage_time_sel (struct regulator_dev*,unsigned int,unsigned int) ;

__attribute__((used)) static int rk808_buck1_2_set_voltage_time_sel(struct regulator_dev *rdev,
           unsigned int old_selector,
           unsigned int new_selector)
{
 struct rk808_regulator_data *pdata = rdev_get_drvdata(rdev);
 int id = rdev_get_id(rdev);
 struct gpio_desc *gpio = pdata->dvs_gpio[id];


 if (!gpio)
  return 0;

 return regulator_set_voltage_time_sel(rdev, old_selector, new_selector);
}
