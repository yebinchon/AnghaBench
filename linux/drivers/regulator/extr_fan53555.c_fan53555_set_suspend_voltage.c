
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {int regmap; } ;
struct TYPE_2__ {int vsel_mask; } ;
struct fan53555_device_info {int sleep_vol_cache; TYPE_1__ desc; int sleep_reg; } ;


 struct fan53555_device_info* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int regulator_map_voltage_linear (struct regulator_dev*,int,int) ;

__attribute__((used)) static int fan53555_set_suspend_voltage(struct regulator_dev *rdev, int uV)
{
 struct fan53555_device_info *di = rdev_get_drvdata(rdev);
 int ret;

 if (di->sleep_vol_cache == uV)
  return 0;
 ret = regulator_map_voltage_linear(rdev, uV, uV);
 if (ret < 0)
  return ret;
 ret = regmap_update_bits(rdev->regmap, di->sleep_reg,
     di->desc.vsel_mask, ret);
 if (ret < 0)
  return ret;


 di->sleep_vol_cache = uV;

 return 0;
}
