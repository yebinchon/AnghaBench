
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65910_reg {int mfd; } ;
struct regulator_dev {int dummy; } ;




 int TPS65910_VDD1 ;
 int TPS65910_VDD1_OP ;
 int TPS65910_VDD2 ;
 int TPS65910_VDD2_OP ;

 int TPS65911_VDDCTRL_OP ;
 unsigned int VDD1_2_NUM_VOLT_FINE ;
 int VDD1_VGAIN_SEL_MASK ;
 int VDD1_VGAIN_SEL_SHIFT ;
 int VDD2_VGAIN_SEL_SHIFT ;
 struct tps65910_reg* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int tps65910_reg_update_bits (int ,int ,int ,int) ;
 int tps65910_reg_write (int ,int ,int) ;

__attribute__((used)) static int tps65910_set_voltage_dcdc_sel(struct regulator_dev *dev,
      unsigned selector)
{
 struct tps65910_reg *pmic = rdev_get_drvdata(dev);
 int id = rdev_get_id(dev), vsel;
 int dcdc_mult = 0;

 switch (id) {
 case 130:
  dcdc_mult = (selector / VDD1_2_NUM_VOLT_FINE) + 1;
  if (dcdc_mult == 1)
   dcdc_mult--;
  vsel = (selector % VDD1_2_NUM_VOLT_FINE) + 3;

  tps65910_reg_update_bits(pmic->mfd, TPS65910_VDD1,
      VDD1_VGAIN_SEL_MASK,
      dcdc_mult << VDD1_VGAIN_SEL_SHIFT);
  tps65910_reg_write(pmic->mfd, TPS65910_VDD1_OP, vsel);
  break;
 case 129:
  dcdc_mult = (selector / VDD1_2_NUM_VOLT_FINE) + 1;
  if (dcdc_mult == 1)
   dcdc_mult--;
  vsel = (selector % VDD1_2_NUM_VOLT_FINE) + 3;

  tps65910_reg_update_bits(pmic->mfd, TPS65910_VDD2,
      VDD1_VGAIN_SEL_MASK,
      dcdc_mult << VDD2_VGAIN_SEL_SHIFT);
  tps65910_reg_write(pmic->mfd, TPS65910_VDD2_OP, vsel);
  break;
 case 128:
  vsel = selector + 3;
  tps65910_reg_write(pmic->mfd, TPS65911_VDDCTRL_OP, vsel);
 }

 return 0;
}
