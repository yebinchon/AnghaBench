
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int regmap; } ;


 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int vexpress_regulator_set_voltage(struct regulator_dev *regdev,
  int min_uV, int max_uV, unsigned *selector)
{
 return regmap_write(regdev->regmap, 0, min_uV);
}
