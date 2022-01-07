
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator {TYPE_1__* rdev; } ;
struct regmap {int dummy; } ;
struct TYPE_2__ {struct regmap* regmap; } ;


 int EOPNOTSUPP ;
 struct regmap* ERR_PTR (int ) ;

struct regmap *regulator_get_regmap(struct regulator *regulator)
{
 struct regmap *map = regulator->rdev->regmap;

 return map ? map : ERR_PTR(-EOPNOTSUPP);
}
