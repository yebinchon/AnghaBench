
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_notifier_match {struct notifier_block* nb; struct regulator* regulator; } ;
struct regulator {int dev; } ;
struct notifier_block {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_regulator_destroy_notifier ;
 int devres_add (int ,struct regulator_notifier_match*) ;
 struct regulator_notifier_match* devres_alloc (int ,int,int ) ;
 int devres_free (struct regulator_notifier_match*) ;
 int regulator_register_notifier (struct regulator*,struct notifier_block*) ;

int devm_regulator_register_notifier(struct regulator *regulator,
         struct notifier_block *nb)
{
 struct regulator_notifier_match *match;
 int ret;

 match = devres_alloc(devm_regulator_destroy_notifier,
        sizeof(struct regulator_notifier_match),
        GFP_KERNEL);
 if (!match)
  return -ENOMEM;

 match->regulator = regulator;
 match->nb = nb;

 ret = regulator_register_notifier(regulator, nb);
 if (ret < 0) {
  devres_free(match);
  return ret;
 }

 devres_add(regulator->dev, match);

 return 0;
}
