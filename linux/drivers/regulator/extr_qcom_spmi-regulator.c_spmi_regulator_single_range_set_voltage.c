
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct spmi_regulator {int dummy; } ;
struct regulator_dev {int dummy; } ;


 int SPMI_COMMON_REG_VOLTAGE_SET ;
 struct spmi_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 int spmi_vreg_write (struct spmi_regulator*,int ,unsigned int*,int) ;

__attribute__((used)) static int spmi_regulator_single_range_set_voltage(struct regulator_dev *rdev,
         unsigned selector)
{
 struct spmi_regulator *vreg = rdev_get_drvdata(rdev);
 u8 sel = selector;





 return spmi_vreg_write(vreg, SPMI_COMMON_REG_VOLTAGE_SET, &sel, 1);
}
