
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sy8824_device_info {struct sy8824_config* cfg; } ;
struct sy8824_config {int mode_reg; } ;
struct regulator_dev {int regmap; } ;


 int EINVAL ;


 int SY8824C_MODE ;
 struct sy8824_device_info* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int sy8824_set_mode(struct regulator_dev *rdev, unsigned int mode)
{
 struct sy8824_device_info *di = rdev_get_drvdata(rdev);
 const struct sy8824_config *cfg = di->cfg;

 switch (mode) {
 case 129:
  regmap_update_bits(rdev->regmap, cfg->mode_reg,
       SY8824C_MODE, SY8824C_MODE);
  break;
 case 128:
  regmap_update_bits(rdev->regmap, cfg->mode_reg,
       SY8824C_MODE, 0);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
