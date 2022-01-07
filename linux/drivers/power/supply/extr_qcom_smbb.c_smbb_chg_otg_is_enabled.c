
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbb_charger {int dev; scalar_t__ addr; int regmap; } ;
struct regulator_dev {int dummy; } ;


 unsigned int OTG_CTL_EN ;
 scalar_t__ SMBB_USB_OTG_CTL ;
 int dev_err (int ,char*) ;
 struct smbb_charger* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_read (int ,scalar_t__,unsigned int*) ;

__attribute__((used)) static int smbb_chg_otg_is_enabled(struct regulator_dev *rdev)
{
 struct smbb_charger *chg = rdev_get_drvdata(rdev);
 unsigned int value = 0;
 int rc;

 rc = regmap_read(chg->regmap, chg->addr + SMBB_USB_OTG_CTL, &value);
 if (rc)
  dev_err(chg->dev, "failed to read OTG_CTL\n");

 return !!(value & OTG_CTL_EN);
}
