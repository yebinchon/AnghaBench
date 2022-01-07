
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twlreg_info {int table_len; } ;
struct regulator_dev {int dummy; } ;


 int TWL_MODULE_PM_RECEIVER ;
 int VREG_VOLTAGE ;
 struct twlreg_info* rdev_get_drvdata (struct regulator_dev*) ;
 int twlreg_read (struct twlreg_info*,int ,int ) ;

__attribute__((used)) static int twl4030ldo_get_voltage_sel(struct regulator_dev *rdev)
{
 struct twlreg_info *info = rdev_get_drvdata(rdev);
 int vsel = twlreg_read(info, TWL_MODULE_PM_RECEIVER, VREG_VOLTAGE);

 if (vsel < 0)
  return vsel;

 vsel &= info->table_len - 1;
 return vsel;
}
