
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_supply_alias_match {scalar_t__ dev; int id; } ;
struct device {int dummy; } ;


 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int devm_regulator_match_supply_alias(struct device *dev, void *res,
          void *data)
{
 struct regulator_supply_alias_match *match = res;
 struct regulator_supply_alias_match *target = data;

 return match->dev == target->dev && strcmp(match->id, target->id) == 0;
}
