
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65910_reg {int (* get_ctrl_reg ) (int) ;int mfd; } ;
struct regulator_dev {int dummy; } ;


 int BBCH_BBSEL_MASK ;
 int BBCH_BBSEL_SHIFT ;
 int EINVAL ;
 int LDO_SEL_MASK ;
 int LDO_SEL_SHIFT ;
 struct tps65910_reg* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int stub1 (int) ;
 int tps65910_reg_read (int ,int,int*) ;

__attribute__((used)) static int tps65910_get_voltage_sel(struct regulator_dev *dev)
{
 struct tps65910_reg *pmic = rdev_get_drvdata(dev);
 int ret, reg, value, id = rdev_get_id(dev);

 reg = pmic->get_ctrl_reg(id);
 if (reg < 0)
  return reg;

 ret = tps65910_reg_read(pmic->mfd, reg, &value);
 if (ret < 0)
  return ret;

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
  value &= LDO_SEL_MASK;
  value >>= LDO_SEL_SHIFT;
  break;
 case 134:
  value &= BBCH_BBSEL_MASK;
  value >>= BBCH_BBSEL_SHIFT;
  break;
 default:
  return -EINVAL;
 }

 return value;
}
