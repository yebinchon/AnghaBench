
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; int regmap; } ;
struct TYPE_2__ {unsigned int vsel_mask; } ;


 int BD9571MWV_AVS_VD09_VID (int) ;
 int bd9571mwv_avs_get_moni_state (struct regulator_dev*) ;
 int ffs (unsigned int) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int bd9571mwv_avs_get_voltage_sel_regmap(struct regulator_dev *rdev)
{
 unsigned int val;
 int ret;

 ret = bd9571mwv_avs_get_moni_state(rdev);
 if (ret < 0)
  return ret;

 ret = regmap_read(rdev->regmap, BD9571MWV_AVS_VD09_VID(ret), &val);
 if (ret != 0)
  return ret;

 val &= rdev->desc->vsel_mask;
 val >>= ffs(rdev->desc->vsel_mask) - 1;

 return val;
}
