
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_notifier_match {struct notifier_block* nb; struct regulator* regulator; } ;
struct regulator {int dev; } ;
struct notifier_block {int dummy; } ;


 int WARN_ON (int) ;
 int devm_regulator_destroy_notifier ;
 int devm_regulator_match_notifier ;
 int devres_release (int ,int ,int ,struct regulator_notifier_match*) ;

void devm_regulator_unregister_notifier(struct regulator *regulator,
     struct notifier_block *nb)
{
 struct regulator_notifier_match match;
 int rc;

 match.regulator = regulator;
 match.nb = nb;

 rc = devres_release(regulator->dev, devm_regulator_destroy_notifier,
       devm_regulator_match_notifier, &match);
 if (rc != 0)
  WARN_ON(rc);
}
