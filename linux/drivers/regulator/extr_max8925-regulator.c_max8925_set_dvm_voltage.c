
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct max8925_regulator_info {int enable_reg; int i2c; } ;


 unsigned char DIV_ROUND_UP (int,int ) ;
 int EINVAL ;
 unsigned char SD1_DVM_SHIFT ;
 int SD1_DVM_STEP ;
 int SD1_DVM_VMAX ;
 int SD1_DVM_VMIN ;
 int max8925_set_bits (int ,int ,unsigned char,unsigned char) ;
 struct max8925_regulator_info* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int max8925_set_dvm_voltage(struct regulator_dev *rdev, int uV)
{
 struct max8925_regulator_info *info = rdev_get_drvdata(rdev);
 unsigned char data, mask;

 if (uV < SD1_DVM_VMIN || uV > SD1_DVM_VMAX)
  return -EINVAL;

 data = DIV_ROUND_UP(uV - SD1_DVM_VMIN, SD1_DVM_STEP);
 data <<= SD1_DVM_SHIFT;
 mask = 3 << SD1_DVM_SHIFT;

 return max8925_set_bits(info->i2c, info->enable_reg, mask, data);
}
