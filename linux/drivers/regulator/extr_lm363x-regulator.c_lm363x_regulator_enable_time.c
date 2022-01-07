
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int regmap; } ;
typedef enum lm363x_regulator_id { ____Placeholder_lm363x_regulator_id } lm363x_regulator_id ;


 int EINVAL ;
 unsigned int ENABLE_TIME_USEC ;
 unsigned int LM3631_ENTIME_CONT_MASK ;
 unsigned int LM3631_ENTIME_MASK ;
 unsigned int LM3631_ENTIME_SHIFT ;




 unsigned int LM3631_REG_ENTIME_VCONT ;
 unsigned int LM3631_REG_ENTIME_VNEG ;
 unsigned int LM3631_REG_ENTIME_VOREF ;
 unsigned int LM3631_REG_ENTIME_VPOS ;
 int* ldo_cont_enable_time ;
 int rdev_get_id (struct regulator_dev*) ;
 scalar_t__ regmap_read (int ,unsigned int,unsigned int*) ;

__attribute__((used)) static int lm363x_regulator_enable_time(struct regulator_dev *rdev)
{
 enum lm363x_regulator_id id = rdev_get_id(rdev);
 unsigned int val, addr, mask;

 switch (id) {
 case 131:
  addr = LM3631_REG_ENTIME_VCONT;
  mask = LM3631_ENTIME_CONT_MASK;
  break;
 case 129:
  addr = LM3631_REG_ENTIME_VOREF;
  mask = LM3631_ENTIME_MASK;
  break;
 case 128:
  addr = LM3631_REG_ENTIME_VPOS;
  mask = LM3631_ENTIME_MASK;
  break;
 case 130:
  addr = LM3631_REG_ENTIME_VNEG;
  mask = LM3631_ENTIME_MASK;
  break;
 default:
  return 0;
 }

 if (regmap_read(rdev->regmap, addr, &val))
  return -EINVAL;

 val = (val & mask) >> LM3631_ENTIME_SHIFT;

 if (id == 131)
  return ldo_cont_enable_time[val];
 else
  return ENABLE_TIME_USEC * val;
}
