
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {struct regmap* regmap; } ;
struct regmap {int dummy; } ;



struct regmap *rdev_get_regmap(struct regulator_dev *rdev)
{
 return rdev->regmap;
}
