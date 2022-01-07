
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int regmap; } ;


 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int vexpress_regulator_get_voltage(struct regulator_dev *regdev)
{
 unsigned int uV;
 int err = regmap_read(regdev->regmap, 0, &uV);

 return err ? err : uV;
}
