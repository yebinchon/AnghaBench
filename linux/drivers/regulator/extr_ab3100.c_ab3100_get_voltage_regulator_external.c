
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct ab3100_regulator {TYPE_1__* plfdata; } ;
struct TYPE_2__ {int external_voltage; } ;


 struct ab3100_regulator* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int ab3100_get_voltage_regulator_external(struct regulator_dev *reg)
{
 struct ab3100_regulator *abreg = rdev_get_drvdata(reg);

 if (abreg->plfdata)
  return abreg->plfdata->external_voltage;
 else

  return 0;
}
