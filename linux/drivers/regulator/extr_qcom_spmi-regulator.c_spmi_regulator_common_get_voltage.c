
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spmi_voltage_range {int dummy; } ;
struct spmi_regulator {int dummy; } ;
struct regulator_dev {int dummy; } ;


 int EINVAL ;
 int SPMI_COMMON_REG_VOLTAGE_SET ;
 struct spmi_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 int spmi_hw_selector_to_sw (struct spmi_regulator*,int ,struct spmi_voltage_range const*) ;
 struct spmi_voltage_range* spmi_regulator_find_range (struct spmi_regulator*) ;
 int spmi_vreg_read (struct spmi_regulator*,int ,int *,int) ;

__attribute__((used)) static int spmi_regulator_common_get_voltage(struct regulator_dev *rdev)
{
 struct spmi_regulator *vreg = rdev_get_drvdata(rdev);
 const struct spmi_voltage_range *range;
 u8 voltage_sel;

 spmi_vreg_read(vreg, SPMI_COMMON_REG_VOLTAGE_SET, &voltage_sel, 1);

 range = spmi_regulator_find_range(vreg);
 if (!range)
  return -EINVAL;

 return spmi_hw_selector_to_sw(vreg, voltage_sel, range);
}
