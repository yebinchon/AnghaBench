
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spmi_regulator {int dummy; } ;
struct regulator_dev {int dummy; } ;


 int SPMI_FTSMPS426_REG_VOLTAGE_LSB ;
 struct spmi_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 int spmi_regulator_common_list_voltage (struct regulator_dev*,unsigned int) ;
 int spmi_vreg_write (struct spmi_regulator*,int ,int*,int) ;

__attribute__((used)) static int spmi_regulator_ftsmps426_set_voltage(struct regulator_dev *rdev,
           unsigned selector)
{
 struct spmi_regulator *vreg = rdev_get_drvdata(rdev);
 u8 buf[2];
 int mV;

 mV = spmi_regulator_common_list_voltage(rdev, selector) / 1000;

 buf[0] = mV & 0xff;
 buf[1] = mV >> 8;
 return spmi_vreg_write(vreg, SPMI_FTSMPS426_REG_VOLTAGE_LSB, buf, 2);
}
