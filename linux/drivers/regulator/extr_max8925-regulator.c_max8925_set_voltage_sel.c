
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; } ;
struct max8925_regulator_info {int vol_reg; int i2c; } ;
struct TYPE_2__ {int n_voltages; } ;


 int max8925_set_bits (int ,int ,unsigned char,unsigned int) ;
 struct max8925_regulator_info* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int max8925_set_voltage_sel(struct regulator_dev *rdev,
       unsigned int selector)
{
 struct max8925_regulator_info *info = rdev_get_drvdata(rdev);
 unsigned char mask = rdev->desc->n_voltages - 1;

 return max8925_set_bits(info->i2c, info->vol_reg, mask, selector);
}
