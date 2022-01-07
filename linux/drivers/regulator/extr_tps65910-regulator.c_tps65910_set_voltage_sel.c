
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65910_reg {int (* get_ctrl_reg ) (int) ;int mfd; } ;
struct regulator_dev {int dummy; } ;


 int BBCH_BBSEL_MASK ;
 unsigned int BBCH_BBSEL_SHIFT ;
 int EINVAL ;
 int LDO_SEL_MASK ;
 unsigned int LDO_SEL_SHIFT ;
 struct tps65910_reg* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int stub1 (int) ;
 int tps65910_reg_update_bits (int ,int,int ,unsigned int) ;

__attribute__((used)) static int tps65910_set_voltage_sel(struct regulator_dev *dev,
        unsigned selector)
{
 struct tps65910_reg *pmic = rdev_get_drvdata(dev);
 int reg, id = rdev_get_id(dev);

 reg = pmic->get_ctrl_reg(id);
 if (reg < 0)
  return reg;

 switch (id) {
 case 130:
 case 132:
 case 131:
 case 128:
 case 133:
 case 137:
 case 136:
 case 135:
 case 129:
  return tps65910_reg_update_bits(pmic->mfd, reg, LDO_SEL_MASK,
      selector << LDO_SEL_SHIFT);
 case 134:
  return tps65910_reg_update_bits(pmic->mfd, reg, BBCH_BBSEL_MASK,
      selector << BBCH_BBSEL_SHIFT);
 }

 return -EINVAL;
}
