
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_notifier_match {int nb; int regulator; } ;
struct device {int dummy; } ;


 int regulator_unregister_notifier (int ,int ) ;

__attribute__((used)) static void devm_regulator_destroy_notifier(struct device *dev, void *res)
{
 struct regulator_notifier_match *match = res;

 regulator_unregister_notifier(match->regulator, match->nb);
}
