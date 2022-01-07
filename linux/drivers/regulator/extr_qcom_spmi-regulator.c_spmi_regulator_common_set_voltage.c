
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spmi_regulator {int dummy; } ;
struct regulator_dev {int dummy; } ;


 int SPMI_COMMON_REG_VOLTAGE_RANGE ;
 struct spmi_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 int spmi_sw_selector_to_hw (struct spmi_regulator*,unsigned int,int *,int *) ;
 int spmi_vreg_write (struct spmi_regulator*,int ,int *,int) ;

__attribute__((used)) static int
spmi_regulator_common_set_voltage(struct regulator_dev *rdev, unsigned selector)
{
 struct spmi_regulator *vreg = rdev_get_drvdata(rdev);
 int ret;
 u8 buf[2];
 u8 range_sel, voltage_sel;

 ret = spmi_sw_selector_to_hw(vreg, selector, &range_sel, &voltage_sel);
 if (ret)
  return ret;

 buf[0] = range_sel;
 buf[1] = voltage_sel;
 return spmi_vreg_write(vreg, SPMI_COMMON_REG_VOLTAGE_RANGE, buf, 2);
}
