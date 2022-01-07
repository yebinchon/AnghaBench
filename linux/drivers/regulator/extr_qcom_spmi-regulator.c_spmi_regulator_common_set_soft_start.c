
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spmi_regulator {int dummy; } ;
struct regulator_dev {int dummy; } ;


 int SPMI_COMMON_REG_SOFT_START ;
 unsigned int SPMI_LDO_SOFT_START_ENABLE_MASK ;
 struct spmi_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 int spmi_vreg_update_bits (struct spmi_regulator*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static int spmi_regulator_common_set_soft_start(struct regulator_dev *rdev)
{
 struct spmi_regulator *vreg = rdev_get_drvdata(rdev);
 unsigned int mask = SPMI_LDO_SOFT_START_ENABLE_MASK;

 return spmi_vreg_update_bits(vreg, SPMI_COMMON_REG_SOFT_START,
         mask, mask);
}
