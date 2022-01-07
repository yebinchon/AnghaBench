
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spmi_regulator {int dummy; } ;
struct regulator_dev {int dummy; } ;


 int SPMI_VS_OCP_OVERRIDE ;
 int SPMI_VS_REG_OCP ;
 struct spmi_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 int spmi_vreg_write (struct spmi_regulator*,int ,int *,int) ;

__attribute__((used)) static int spmi_regulator_vs_ocp(struct regulator_dev *rdev)
{
 struct spmi_regulator *vreg = rdev_get_drvdata(rdev);
 u8 reg = SPMI_VS_OCP_OVERRIDE;

 return spmi_vreg_write(vreg, SPMI_VS_REG_OCP, &reg, 1);
}
