
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tps6507x_pmic {TYPE_1__** info; } ;
struct regulator_dev {int dummy; } ;
struct TYPE_2__ {int defdcdc_default; } ;


 int EINVAL ;



 int TPS6507X_DEFDCDCX_DCDC_MASK ;


 int TPS6507X_REG_DEFDCDC1 ;
 int TPS6507X_REG_DEFDCDC2_HIGH ;
 int TPS6507X_REG_DEFDCDC2_LOW ;
 int TPS6507X_REG_DEFDCDC3_HIGH ;
 int TPS6507X_REG_DEFDCDC3_LOW ;
 int TPS6507X_REG_DEFLDO2 ;
 int TPS6507X_REG_DEFLDO2_LDO2_MASK ;
 int TPS6507X_REG_LDO_CTRL1 ;
 int TPS6507X_REG_LDO_CTRL1_LDO1_MASK ;
 struct tps6507x_pmic* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int tps6507x_pmic_reg_read (struct tps6507x_pmic*,int) ;
 int tps6507x_pmic_reg_write (struct tps6507x_pmic*,int,int) ;

__attribute__((used)) static int tps6507x_pmic_set_voltage_sel(struct regulator_dev *dev,
       unsigned selector)
{
 struct tps6507x_pmic *tps = rdev_get_drvdata(dev);
 int data, rid = rdev_get_id(dev);
 u8 reg, mask;

 switch (rid) {
 case 132:
  reg = TPS6507X_REG_DEFDCDC1;
  mask = TPS6507X_DEFDCDCX_DCDC_MASK;
  break;
 case 131:
  if (tps->info[rid]->defdcdc_default)
   reg = TPS6507X_REG_DEFDCDC2_HIGH;
  else
   reg = TPS6507X_REG_DEFDCDC2_LOW;
  mask = TPS6507X_DEFDCDCX_DCDC_MASK;
  break;
 case 130:
  if (tps->info[rid]->defdcdc_default)
   reg = TPS6507X_REG_DEFDCDC3_HIGH;
  else
   reg = TPS6507X_REG_DEFDCDC3_LOW;
  mask = TPS6507X_DEFDCDCX_DCDC_MASK;
  break;
 case 129:
  reg = TPS6507X_REG_LDO_CTRL1;
  mask = TPS6507X_REG_LDO_CTRL1_LDO1_MASK;
  break;
 case 128:
  reg = TPS6507X_REG_DEFLDO2;
  mask = TPS6507X_REG_DEFLDO2_LDO2_MASK;
  break;
 default:
  return -EINVAL;
 }

 data = tps6507x_pmic_reg_read(tps, reg);
 if (data < 0)
  return data;

 data &= ~mask;
 data |= selector;

 return tps6507x_pmic_reg_write(tps, reg, data);
}
