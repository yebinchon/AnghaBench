
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_bulk_devres {int num_consumers; struct regulator_bulk_data* consumers; } ;
struct regulator_bulk_data {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_regulator_bulk_release ;
 int devres_add (struct device*,struct regulator_bulk_devres*) ;
 struct regulator_bulk_devres* devres_alloc (int ,int,int ) ;
 int devres_free (struct regulator_bulk_devres*) ;
 int regulator_bulk_get (struct device*,int,struct regulator_bulk_data*) ;

int devm_regulator_bulk_get(struct device *dev, int num_consumers,
       struct regulator_bulk_data *consumers)
{
 struct regulator_bulk_devres *devres;
 int ret;

 devres = devres_alloc(devm_regulator_bulk_release,
         sizeof(*devres), GFP_KERNEL);
 if (!devres)
  return -ENOMEM;

 ret = regulator_bulk_get(dev, num_consumers, consumers);
 if (!ret) {
  devres->consumers = consumers;
  devres->num_consumers = num_consumers;
  devres_add(dev, devres);
 } else {
  devres_free(devres);
 }

 return ret;
}
