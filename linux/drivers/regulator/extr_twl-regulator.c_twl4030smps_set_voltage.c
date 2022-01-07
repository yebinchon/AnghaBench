
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twlreg_info {int dummy; } ;
struct regulator_dev {int dummy; } ;


 int DIV_ROUND_UP (int,int) ;
 int TWL_MODULE_PM_RECEIVER ;
 int VREG_VOLTAGE_SMPS_4030 ;
 struct twlreg_info* rdev_get_drvdata (struct regulator_dev*) ;
 int twlreg_write (struct twlreg_info*,int ,int ,int) ;

__attribute__((used)) static int
twl4030smps_set_voltage(struct regulator_dev *rdev, int min_uV, int max_uV,
   unsigned *selector)
{
 struct twlreg_info *info = rdev_get_drvdata(rdev);
 int vsel = DIV_ROUND_UP(min_uV - 600000, 12500);

 twlreg_write(info, TWL_MODULE_PM_RECEIVER, VREG_VOLTAGE_SMPS_4030, vsel);

 return 0;
}
