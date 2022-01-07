
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spmi_regulator {int dummy; } ;
struct regulator_dev {int dummy; } ;


 int EINVAL ;



 int SPMI_COMMON_REG_MODE ;
 int SPMI_FTSMPS426_MODE_AUTO_MASK ;
 int SPMI_FTSMPS426_MODE_HPM_MASK ;
 int SPMI_FTSMPS426_MODE_LPM_MASK ;
 int SPMI_FTSMPS426_MODE_MASK ;
 struct spmi_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 int spmi_vreg_update_bits (struct spmi_regulator*,int ,int ,int ) ;

__attribute__((used)) static int
spmi_regulator_ftsmps426_set_mode(struct regulator_dev *rdev, unsigned int mode)
{
 struct spmi_regulator *vreg = rdev_get_drvdata(rdev);
 u8 mask = SPMI_FTSMPS426_MODE_MASK;
 u8 val;

 switch (mode) {
 case 128:
  val = SPMI_FTSMPS426_MODE_HPM_MASK;
  break;
 case 130:
  val = SPMI_FTSMPS426_MODE_AUTO_MASK;
  break;
 case 129:
  val = SPMI_FTSMPS426_MODE_LPM_MASK;
  break;
 default:
  return -EINVAL;
 }

 return spmi_vreg_update_bits(vreg, SPMI_COMMON_REG_MODE, val, mask);
}
