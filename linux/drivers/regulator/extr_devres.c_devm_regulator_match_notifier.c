
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_notifier_match {scalar_t__ regulator; scalar_t__ nb; } ;
struct device {int dummy; } ;



__attribute__((used)) static int devm_regulator_match_notifier(struct device *dev, void *res,
      void *data)
{
 struct regulator_notifier_match *match = res;
 struct regulator_notifier_match *target = data;

 return match->regulator == target->regulator && match->nb == target->nb;
}
