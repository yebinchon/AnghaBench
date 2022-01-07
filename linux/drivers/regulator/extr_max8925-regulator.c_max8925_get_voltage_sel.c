
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; } ;
struct max8925_regulator_info {int vol_reg; int i2c; } ;
struct TYPE_2__ {int n_voltages; } ;


 int max8925_reg_read (int ,int ) ;
 struct max8925_regulator_info* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int max8925_get_voltage_sel(struct regulator_dev *rdev)
{
 struct max8925_regulator_info *info = rdev_get_drvdata(rdev);
 unsigned char data, mask;
 int ret;

 ret = max8925_reg_read(info->i2c, info->vol_reg);
 if (ret < 0)
  return ret;
 mask = rdev->desc->n_voltages - 1;
 data = ret & mask;

 return data;
}
