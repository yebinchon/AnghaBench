
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65910_reg {unsigned int (* get_ctrl_reg ) (int) ;int mfd; } ;
struct regulator_dev {int dummy; } ;


 int EINVAL ;
 unsigned int LDO1_SEL_MASK ;
 unsigned int LDO3_SEL_MASK ;
 unsigned int LDO_SEL_MASK ;
 unsigned int LDO_SEL_SHIFT ;
 struct tps65910_reg* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 unsigned int stub1 (int) ;
 int tps65910_reg_read (int ,unsigned int,unsigned int*) ;

__attribute__((used)) static int tps65911_get_voltage_sel(struct regulator_dev *dev)
{
 struct tps65910_reg *pmic = rdev_get_drvdata(dev);
 int ret, id = rdev_get_id(dev);
 unsigned int value, reg;

 reg = pmic->get_ctrl_reg(id);

 ret = tps65910_reg_read(pmic->mfd, reg, &value);
 if (ret < 0)
  return ret;

 switch (id) {
 case 135:
 case 134:
 case 132:
  value &= LDO1_SEL_MASK;
  value >>= LDO_SEL_SHIFT;
  break;
 case 133:
 case 131:
 case 130:
 case 129:
 case 128:
  value &= LDO3_SEL_MASK;
  value >>= LDO_SEL_SHIFT;
  break;
 case 136:
  value &= LDO_SEL_MASK;
  value >>= LDO_SEL_SHIFT;
  break;
 default:
  return -EINVAL;
 }

 return value;
}
