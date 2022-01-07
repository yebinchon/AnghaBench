
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct qcom_rpm_reg {int uV; int uv_updated; } ;


 struct qcom_rpm_reg* rdev_get_drvdata (struct regulator_dev*) ;
 int rpm_reg_write_active (struct qcom_rpm_reg*) ;

__attribute__((used)) static int rpm_reg_set_voltage(struct regulator_dev *rdev,
          int min_uV,
          int max_uV,
          unsigned *selector)
{
 struct qcom_rpm_reg *vreg = rdev_get_drvdata(rdev);
 int ret;
 int old_uV = vreg->uV;

 vreg->uV = min_uV;
 vreg->uv_updated = 1;

 ret = rpm_reg_write_active(vreg);
 if (ret)
  vreg->uV = old_uV;

 return ret;
}
