
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbb_charger {int dev; scalar_t__ addr; int regmap; } ;
struct regulator_dev {int dummy; } ;


 int OTG_CTL_EN ;
 scalar_t__ SMBB_USB_OTG_CTL ;
 int dev_err (int ,char*) ;
 struct smbb_charger* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_update_bits (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static int smbb_chg_otg_enable(struct regulator_dev *rdev)
{
 struct smbb_charger *chg = rdev_get_drvdata(rdev);
 int rc;

 rc = regmap_update_bits(chg->regmap, chg->addr + SMBB_USB_OTG_CTL,
    OTG_CTL_EN, OTG_CTL_EN);
 if (rc)
  dev_err(chg->dev, "failed to update OTG_CTL\n");
 return rc;
}
