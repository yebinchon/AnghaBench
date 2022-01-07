
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spmi_regulator {int dummy; } ;
struct regulator_dev {int dummy; } ;


 struct spmi_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 int spmi_regulator_select_voltage_same_range (struct spmi_regulator*,int,int) ;

__attribute__((used)) static int spmi_regulator_common_map_voltage(struct regulator_dev *rdev,
          int min_uV, int max_uV)
{
 struct spmi_regulator *vreg = rdev_get_drvdata(rdev);





 return spmi_regulator_select_voltage_same_range(vreg, min_uV, max_uV);
}
