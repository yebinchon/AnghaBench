
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int regmap; } ;
struct fan53555_device_info {int mode_mask; int vol_reg; int mode_reg; } ;


 int EINVAL ;


 struct fan53555_device_info* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int fan53555_set_mode(struct regulator_dev *rdev, unsigned int mode)
{
 struct fan53555_device_info *di = rdev_get_drvdata(rdev);

 switch (mode) {
 case 129:
  regmap_update_bits(rdev->regmap, di->mode_reg,
       di->mode_mask, di->mode_mask);
  break;
 case 128:
  regmap_update_bits(rdev->regmap, di->vol_reg, di->mode_mask, 0);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
