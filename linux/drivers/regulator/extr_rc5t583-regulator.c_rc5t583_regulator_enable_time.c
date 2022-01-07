
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct rc5t583_regulator_info {int enable_uv_per_us; } ;


 int DIV_ROUND_UP (int,int ) ;
 struct rc5t583_regulator_info* rdev_get_drvdata (struct regulator_dev*) ;
 int regulator_get_voltage_sel_regmap (struct regulator_dev*) ;
 int regulator_list_voltage_linear (struct regulator_dev*,int) ;

__attribute__((used)) static int rc5t583_regulator_enable_time(struct regulator_dev *rdev)
{
 struct rc5t583_regulator_info *reg_info = rdev_get_drvdata(rdev);
 int vsel = regulator_get_voltage_sel_regmap(rdev);
 int curr_uV = regulator_list_voltage_linear(rdev, vsel);

 return DIV_ROUND_UP(curr_uV, reg_info->enable_uv_per_us);
}
