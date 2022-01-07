
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int regmap; } ;


 int BD9571MWV_AVS_SET_MONI ;
 unsigned int BD9571MWV_AVS_SET_MONI_MASK ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int bd9571mwv_avs_get_moni_state(struct regulator_dev *rdev)
{
 unsigned int val;
 int ret;

 ret = regmap_read(rdev->regmap, BD9571MWV_AVS_SET_MONI, &val);
 if (ret != 0)
  return ret;

 return val & BD9571MWV_AVS_SET_MONI_MASK;
}
