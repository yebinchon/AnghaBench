
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tps80031_regulator {int device_flags; int dev; TYPE_2__* rinfo; } ;
struct regulator_dev {int dummy; } ;
struct device {int dummy; } ;
typedef unsigned int sel ;
struct TYPE_3__ {scalar_t__ id; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;


 int EINVAL ;
 scalar_t__ TPS80031 ;
 scalar_t__ TPS80031_REGULATOR_LDO2 ;
 scalar_t__ TPS80032 ;
 int TRACK_MODE_ENABLE ;
 int dev_err (int ,char*,unsigned int) ;
 struct tps80031_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 int regulator_list_voltage_linear (struct regulator_dev*,unsigned int) ;
 struct device* to_tps80031_dev (struct regulator_dev*) ;
 scalar_t__ tps80031_get_chip_info (struct device*) ;
 int tps80031_get_pmu_version (struct device*) ;

__attribute__((used)) static int tps80031_ldo_list_voltage(struct regulator_dev *rdev,
         unsigned int sel)
{
 struct tps80031_regulator *ri = rdev_get_drvdata(rdev);
 struct device *parent = to_tps80031_dev(rdev);


 if ((ri->rinfo->desc.id == TPS80031_REGULATOR_LDO2) &&
   (ri->device_flags & TRACK_MODE_ENABLE)) {
  unsigned nvsel = (sel) & 0x1F;
  if (((tps80031_get_chip_info(parent) == TPS80031) ||
   ((tps80031_get_chip_info(parent) == TPS80032) &&
   (tps80031_get_pmu_version(parent) == 0x0))) &&
   ((nvsel == 0x0) || (nvsel >= 0x19 && nvsel <= 0x1F))) {
    dev_err(ri->dev,
     "Invalid sel %d in track mode LDO2\n",
     nvsel);
    return -EINVAL;
  }
 }

 return regulator_list_voltage_linear(rdev, sel);
}
