
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct spmi_regulator {int dummy; } ;
struct regulator_dev {int dev; } ;


 int EINVAL ;
 int dev_dbg (int *,char*,scalar_t__,scalar_t__) ;
 struct spmi_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 int smp_call_function_single (int ,int ,scalar_t__*,int) ;
 int spmi_saw_set_vdd ;
 int spmi_sw_selector_to_hw (struct spmi_regulator*,unsigned int,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int
spmi_regulator_saw_set_voltage(struct regulator_dev *rdev, unsigned selector)
{
 struct spmi_regulator *vreg = rdev_get_drvdata(rdev);
 int ret;
 u8 range_sel, voltage_sel;

 ret = spmi_sw_selector_to_hw(vreg, selector, &range_sel, &voltage_sel);
 if (ret)
  return ret;

 if (0 != range_sel) {
  dev_dbg(&rdev->dev, "range_sel = %02X voltage_sel = %02X", range_sel, voltage_sel);

  return -EINVAL;
 }


 return smp_call_function_single(0, spmi_saw_set_vdd, &voltage_sel, 1);

}
