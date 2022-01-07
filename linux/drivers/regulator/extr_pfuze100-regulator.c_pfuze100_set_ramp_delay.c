
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; } ;
struct pfuze_chip {int chip_id; int dev; int regmap; } ;
struct TYPE_2__ {scalar_t__ vsel_reg; } ;


 int EACCES ;

 int PFUZE100_SWBST ;

 int PFUZE200_SWBST ;

 int PFUZE3000_SWBST ;

 int dev_err (int ,char*,int) ;
 struct pfuze_chip* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int regmap_update_bits (int ,scalar_t__,int,unsigned int) ;

__attribute__((used)) static int pfuze100_set_ramp_delay(struct regulator_dev *rdev, int ramp_delay)
{
 struct pfuze_chip *pfuze100 = rdev_get_drvdata(rdev);
 int id = rdev_get_id(rdev);
 bool reg_has_ramp_delay;
 unsigned int ramp_bits;
 int ret;

 switch (pfuze100->chip_id) {
 case 128:

  reg_has_ramp_delay = 0;
  break;
 case 129:
  reg_has_ramp_delay = (id < PFUZE3000_SWBST);
  break;
 case 130:
  reg_has_ramp_delay = (id < PFUZE200_SWBST);
  break;
 case 131:
 default:
  reg_has_ramp_delay = (id < PFUZE100_SWBST);
  break;
 }

 if (reg_has_ramp_delay) {
  ramp_delay = 12500 / ramp_delay;
  ramp_bits = (ramp_delay >> 1) - (ramp_delay >> 3);
  ret = regmap_update_bits(pfuze100->regmap,
      rdev->desc->vsel_reg + 4,
      0xc0, ramp_bits << 6);
  if (ret < 0)
   dev_err(pfuze100->dev, "ramp failed, err %d\n", ret);
 } else {
  ret = -EACCES;
 }

 return ret;
}
