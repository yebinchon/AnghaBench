
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spmi_regulator {int dummy; } ;
struct regulator_dev {int dummy; } ;


 unsigned int REGULATOR_MODE_FAST ;
 unsigned int REGULATOR_MODE_IDLE ;
 unsigned int REGULATOR_MODE_NORMAL ;


 int SPMI_COMMON_REG_MODE ;
 struct spmi_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 int spmi_vreg_read (struct spmi_regulator*,int ,int*,int) ;

__attribute__((used)) static unsigned int spmi_regulator_common_get_mode(struct regulator_dev *rdev)
{
 struct spmi_regulator *vreg = rdev_get_drvdata(rdev);
 u8 reg;

 spmi_vreg_read(vreg, SPMI_COMMON_REG_MODE, &reg, 1);

 reg &= 128 | 129;

 switch (reg) {
 case 128:
  return REGULATOR_MODE_NORMAL;
 case 129:
  return REGULATOR_MODE_FAST;
 default:
  return REGULATOR_MODE_IDLE;
 }
}
