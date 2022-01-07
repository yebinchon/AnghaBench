
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tps_pmic {TYPE_1__* driver_data; } ;
struct regulator_dev {int dummy; } ;
struct TYPE_2__ {int core_regulator; } ;


 int EINVAL ;
 int TPS65023_DCDC_1 ;
 int TPS65023_DCDC_3 ;
 struct tps_pmic* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int regulator_get_voltage_sel_regmap (struct regulator_dev*) ;

__attribute__((used)) static int tps65023_dcdc_get_voltage_sel(struct regulator_dev *dev)
{
 struct tps_pmic *tps = rdev_get_drvdata(dev);
 int dcdc = rdev_get_id(dev);

 if (dcdc < TPS65023_DCDC_1 || dcdc > TPS65023_DCDC_3)
  return -EINVAL;

 if (dcdc != tps->driver_data->core_regulator)
  return 0;

 return regulator_get_voltage_sel_regmap(dev);
}
