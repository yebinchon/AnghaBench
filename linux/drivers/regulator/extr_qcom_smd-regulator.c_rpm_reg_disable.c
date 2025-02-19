
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct qcom_rpm_reg {int is_enabled; int enabled_updated; } ;


 struct qcom_rpm_reg* rdev_get_drvdata (struct regulator_dev*) ;
 int rpm_reg_write_active (struct qcom_rpm_reg*) ;

__attribute__((used)) static int rpm_reg_disable(struct regulator_dev *rdev)
{
 struct qcom_rpm_reg *vreg = rdev_get_drvdata(rdev);
 int ret;

 vreg->is_enabled = 0;
 vreg->enabled_updated = 1;

 ret = rpm_reg_write_active(vreg);
 if (ret)
  vreg->is_enabled = 1;

 return ret;
}
