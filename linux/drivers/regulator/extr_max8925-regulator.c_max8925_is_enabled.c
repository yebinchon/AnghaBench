
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct max8925_regulator_info {int enable_reg; int i2c; } ;


 int LDO_I2C_EN_MASK ;
 int LDO_I2C_EN_SHIFT ;
 int LDO_SEQ_I2C ;
 int LDO_SEQ_MASK ;
 int LDO_SEQ_SHIFT ;
 int max8925_reg_read (int ,int ) ;
 struct max8925_regulator_info* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int max8925_is_enabled(struct regulator_dev *rdev)
{
 struct max8925_regulator_info *info = rdev_get_drvdata(rdev);
 int ldo_seq, ret;

 ret = max8925_reg_read(info->i2c, info->enable_reg);
 if (ret < 0)
  return ret;
 ldo_seq = (ret >> LDO_SEQ_SHIFT) & LDO_SEQ_MASK;
 if (ldo_seq != LDO_SEQ_I2C)
  return 1;
 else
  return ret & (LDO_I2C_EN_MASK << LDO_I2C_EN_SHIFT);
}
