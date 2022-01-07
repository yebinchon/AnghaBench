
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tps_pmic {TYPE_1__* driver_data; } ;
struct regulator_dev {int dummy; } ;
struct TYPE_2__ {int core_regulator; } ;


 int EINVAL ;
 struct tps_pmic* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int regulator_set_voltage_sel_regmap (struct regulator_dev*,unsigned int) ;

__attribute__((used)) static int tps65023_dcdc_set_voltage_sel(struct regulator_dev *dev,
      unsigned selector)
{
 struct tps_pmic *tps = rdev_get_drvdata(dev);
 int dcdc = rdev_get_id(dev);

 if (dcdc != tps->driver_data->core_regulator)
  return -EINVAL;

 return regulator_set_voltage_sel_regmap(dev, selector);
}
