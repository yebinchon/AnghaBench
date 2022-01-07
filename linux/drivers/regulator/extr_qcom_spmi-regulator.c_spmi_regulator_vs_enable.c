
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spmi_regulator {int vs_enable_time; scalar_t__ ocp_count; scalar_t__ ocp_irq; } ;
struct regulator_dev {int dummy; } ;


 int ktime_get () ;
 struct spmi_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 int regulator_enable_regmap (struct regulator_dev*) ;

__attribute__((used)) static int spmi_regulator_vs_enable(struct regulator_dev *rdev)
{
 struct spmi_regulator *vreg = rdev_get_drvdata(rdev);

 if (vreg->ocp_irq) {
  vreg->ocp_count = 0;
  vreg->vs_enable_time = ktime_get();
 }

 return regulator_enable_regmap(rdev);
}
