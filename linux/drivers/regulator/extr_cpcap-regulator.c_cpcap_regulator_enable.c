
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {int regmap; TYPE_1__* desc; } ;
struct cpcap_regulator {int assign_mask; int assign_reg; } ;
struct TYPE_2__ {int enable_val; } ;


 int CPCAP_REG_OFF_MODE_SEC ;
 struct cpcap_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regulator_disable_regmap (struct regulator_dev*) ;
 int regulator_enable_regmap (struct regulator_dev*) ;

__attribute__((used)) static int cpcap_regulator_enable(struct regulator_dev *rdev)
{
 struct cpcap_regulator *regulator = rdev_get_drvdata(rdev);
 int error, ignore;

 error = regulator_enable_regmap(rdev);
 if (error)
  return error;

 if (rdev->desc->enable_val & CPCAP_REG_OFF_MODE_SEC) {
  error = regmap_update_bits(rdev->regmap, regulator->assign_reg,
        regulator->assign_mask,
        regulator->assign_mask);
  if (error)
   ignore = regulator_disable_regmap(rdev);
 }

 return error;
}
