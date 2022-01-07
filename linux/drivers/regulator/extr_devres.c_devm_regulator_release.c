
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator {int dummy; } ;
struct device {int dummy; } ;


 int regulator_put (struct regulator*) ;

__attribute__((used)) static void devm_regulator_release(struct device *dev, void *res)
{
 regulator_put(*(struct regulator **)res);
}
