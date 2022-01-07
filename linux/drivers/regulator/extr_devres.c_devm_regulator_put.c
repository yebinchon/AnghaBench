
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator {int dev; } ;


 int WARN_ON (int) ;
 int devm_regulator_match ;
 int devm_regulator_release ;
 int devres_release (int ,int ,int ,struct regulator*) ;

void devm_regulator_put(struct regulator *regulator)
{
 int rc;

 rc = devres_release(regulator->dev, devm_regulator_release,
       devm_regulator_match, regulator);
 if (rc != 0)
  WARN_ON(rc);
}
