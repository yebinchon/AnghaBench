
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twlreg_info {int flags; } ;
struct regulator_dev {int dummy; } ;


 int TWL6030_VREG_VOLTAGE_WR_S ;
 int TWL_6030_WARM_RESET ;
 int TWL_MODULE_PM_RECEIVER ;
 int VREG_VOLTAGE ;
 struct twlreg_info* rdev_get_drvdata (struct regulator_dev*) ;
 int twlreg_read (struct twlreg_info*,int ,int ) ;

__attribute__((used)) static int twl6030ldo_get_voltage_sel(struct regulator_dev *rdev)
{
 struct twlreg_info *info = rdev_get_drvdata(rdev);
 int vsel = twlreg_read(info, TWL_MODULE_PM_RECEIVER, VREG_VOLTAGE);

 if (info->flags & TWL_6030_WARM_RESET)
  vsel &= ~TWL6030_VREG_VOLTAGE_WR_S;

 return vsel;
}
