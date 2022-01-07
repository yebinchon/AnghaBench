
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tps80031_regulator {int device_flags; TYPE_2__* rinfo; } ;
struct regulator_dev {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {scalar_t__ id; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;


 scalar_t__ TPS80031 ;
 scalar_t__ TPS80031_REGULATOR_LDO2 ;
 scalar_t__ TPS80032 ;
 int TRACK_MODE_ENABLE ;
 struct tps80031_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 int regulator_map_voltage_iterate (struct regulator_dev*,int,int) ;
 int regulator_map_voltage_linear (struct regulator_dev*,int,int) ;
 struct device* to_tps80031_dev (struct regulator_dev*) ;
 scalar_t__ tps80031_get_chip_info (struct device*) ;
 int tps80031_get_pmu_version (struct device*) ;

__attribute__((used)) static int tps80031_ldo_map_voltage(struct regulator_dev *rdev,
        int min_uV, int max_uV)
{
 struct tps80031_regulator *ri = rdev_get_drvdata(rdev);
 struct device *parent = to_tps80031_dev(rdev);


 if ((ri->rinfo->desc.id == TPS80031_REGULATOR_LDO2) &&
   (ri->device_flags & TRACK_MODE_ENABLE)) {
  if (((tps80031_get_chip_info(parent) == TPS80031) ||
   ((tps80031_get_chip_info(parent) == TPS80032) &&
   (tps80031_get_pmu_version(parent) == 0x0)))) {
   return regulator_map_voltage_iterate(rdev, min_uV,
            max_uV);
  }
 }

 return regulator_map_voltage_linear(rdev, min_uV, max_uV);
}
