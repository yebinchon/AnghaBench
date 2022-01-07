
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct max8925_regulator_info {int vol_reg; int i2c; } ;


 int SD1_DVM_EN ;
 int max8925_set_bits (int ,int ,int,int ) ;
 struct max8925_regulator_info* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int max8925_set_dvm_disable(struct regulator_dev *rdev)
{
 struct max8925_regulator_info *info = rdev_get_drvdata(rdev);

 return max8925_set_bits(info->i2c, info->vol_reg, 1 << SD1_DVM_EN, 0);
}
