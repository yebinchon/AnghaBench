
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct regmap {int dummy; } ;
struct max77650_regulator_desc {int regB; } ;


 int MAX77650_REGULATOR_ENABLED ;
 int MAX77650_REGULATOR_EN_CTRL_MASK ;
 struct max77650_regulator_desc* rdev_get_drvdata (struct regulator_dev*) ;
 struct regmap* rdev_get_regmap (struct regulator_dev*) ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;

__attribute__((used)) static int max77650_regulator_enable(struct regulator_dev *rdev)
{
 struct max77650_regulator_desc *rdesc;
 struct regmap *map;

 rdesc = rdev_get_drvdata(rdev);
 map = rdev_get_regmap(rdev);

 return regmap_update_bits(map, rdesc->regB,
      MAX77650_REGULATOR_EN_CTRL_MASK,
      MAX77650_REGULATOR_ENABLED);
}
