
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct qcom_rpm_reg {int is_enabled; } ;


 struct qcom_rpm_reg* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int rpm_reg_is_enabled(struct regulator_dev *rdev)
{
 struct qcom_rpm_reg *vreg = rdev_get_drvdata(rdev);

 return vreg->is_enabled;
}
