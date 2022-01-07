
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tps65910_reg {TYPE_1__** info; } ;
struct regulator_dev {int dummy; } ;
struct TYPE_2__ {int* voltage_table; } ;


 int EINVAL ;
 unsigned int LDO_MIN_VOLT ;
 struct tps65910_reg* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int tps65911_list_voltage(struct regulator_dev *dev, unsigned selector)
{
 struct tps65910_reg *pmic = rdev_get_drvdata(dev);
 int step_mv = 0, id = rdev_get_id(dev);

 switch (id) {
 case 135:
 case 134:
 case 132:

  if (selector < 5)
   selector = 0;
  else
   selector -= 4;

  step_mv = 50;
  break;
 case 133:
 case 131:
 case 130:
 case 129:
 case 128:

  if (selector < 3)
   selector = 0;
  else
   selector -= 2;

  step_mv = 100;
  break;
 case 136:
  return pmic->info[id]->voltage_table[selector];
 default:
  return -EINVAL;
 }

 return (LDO_MIN_VOLT + selector * step_mv) * 1000;
}
