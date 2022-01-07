
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_bulk_devres {int consumers; int num_consumers; } ;
struct device {int dummy; } ;


 int regulator_bulk_free (int ,int ) ;

__attribute__((used)) static void devm_regulator_bulk_release(struct device *dev, void *res)
{
 struct regulator_bulk_devres *devres = res;

 regulator_bulk_free(devres->num_consumers, devres->consumers);
}
