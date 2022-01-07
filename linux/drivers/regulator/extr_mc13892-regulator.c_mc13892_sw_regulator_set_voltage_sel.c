
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct regulator_dev {TYPE_1__* desc; } ;
struct mc13xxx_regulator_priv {int mc13xxx; } ;
struct TYPE_4__ {int vsel_mask; scalar_t__ vsel_reg; } ;
struct TYPE_3__ {int* volt_table; } ;


 scalar_t__ MC13892_SWITCHERS0 ;
 int MC13892_SWITCHERS0_SWxHI ;
 scalar_t__ MC13892_SWxHI_SEL_OFFSET ;
 TYPE_2__* mc13892_regulators ;
 int mc13xxx_lock (int ) ;
 int mc13xxx_reg_rmw (int ,scalar_t__,int,int) ;
 int mc13xxx_unlock (int ) ;
 struct mc13xxx_regulator_priv* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int mc13892_sw_regulator_set_voltage_sel(struct regulator_dev *rdev,
      unsigned selector)
{
 struct mc13xxx_regulator_priv *priv = rdev_get_drvdata(rdev);
 int volt, mask, id = rdev_get_id(rdev);
 u32 reg_value;
 int ret;

 volt = rdev->desc->volt_table[selector];
 mask = mc13892_regulators[id].vsel_mask;
 reg_value = selector;
 if (mc13892_regulators[id].vsel_reg != MC13892_SWITCHERS0) {
  mask |= MC13892_SWITCHERS0_SWxHI;

  if (volt > 1375000) {
   reg_value -= MC13892_SWxHI_SEL_OFFSET;
   reg_value |= MC13892_SWITCHERS0_SWxHI;
  } else {
   reg_value &= ~MC13892_SWITCHERS0_SWxHI;
  }
 }

 mc13xxx_lock(priv->mc13xxx);
 ret = mc13xxx_reg_rmw(priv->mc13xxx, mc13892_regulators[id].vsel_reg,
         mask, reg_value);
 mc13xxx_unlock(priv->mc13xxx);

 return ret;
}
