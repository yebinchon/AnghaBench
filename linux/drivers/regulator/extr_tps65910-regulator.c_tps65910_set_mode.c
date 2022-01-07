
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65910_reg {int (* get_ctrl_reg ) (int) ;struct tps65910* mfd; } ;
struct tps65910 {int dummy; } ;
struct regulator_dev {int dummy; } ;


 int EINVAL ;
 int LDO_ST_MODE_BIT ;
 int LDO_ST_ON_BIT ;



 struct tps65910_reg* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int stub1 (int) ;
 int tps65910_reg_clear_bits (struct tps65910*,int,int) ;
 int tps65910_reg_set_bits (struct tps65910*,int,int) ;
 int tps65910_reg_update_bits (struct tps65910*,int,int,int) ;

__attribute__((used)) static int tps65910_set_mode(struct regulator_dev *dev, unsigned int mode)
{
 struct tps65910_reg *pmic = rdev_get_drvdata(dev);
 struct tps65910 *mfd = pmic->mfd;
 int reg, value, id = rdev_get_id(dev);

 reg = pmic->get_ctrl_reg(id);
 if (reg < 0)
  return reg;

 switch (mode) {
 case 129:
  return tps65910_reg_update_bits(pmic->mfd, reg,
      LDO_ST_MODE_BIT | LDO_ST_ON_BIT,
      LDO_ST_ON_BIT);
 case 130:
  value = LDO_ST_ON_BIT | LDO_ST_MODE_BIT;
  return tps65910_reg_set_bits(mfd, reg, value);
 case 128:
  return tps65910_reg_clear_bits(mfd, reg, LDO_ST_ON_BIT);
 }

 return -EINVAL;
}
