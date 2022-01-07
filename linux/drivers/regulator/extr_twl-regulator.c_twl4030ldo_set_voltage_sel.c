
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twlreg_info {int dummy; } ;
struct regulator_dev {int dummy; } ;


 int TWL_MODULE_PM_RECEIVER ;
 int VREG_VOLTAGE ;
 struct twlreg_info* rdev_get_drvdata (struct regulator_dev*) ;
 int twlreg_write (struct twlreg_info*,int ,int ,unsigned int) ;

__attribute__((used)) static int
twl4030ldo_set_voltage_sel(struct regulator_dev *rdev, unsigned selector)
{
 struct twlreg_info *info = rdev_get_drvdata(rdev);

 return twlreg_write(info, TWL_MODULE_PM_RECEIVER, VREG_VOLTAGE,
       selector);
}
