
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_bulk_data {int * consumer; int supply; } ;
struct device {int dummy; } ;


 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int dev_dbg (struct device*,char*,int ) ;
 int dev_err (struct device*,char*,int ,int) ;
 int * regulator_get (struct device*,int ) ;
 int regulator_put (int *) ;

int regulator_bulk_get(struct device *dev, int num_consumers,
         struct regulator_bulk_data *consumers)
{
 int i;
 int ret;

 for (i = 0; i < num_consumers; i++)
  consumers[i].consumer = ((void*)0);

 for (i = 0; i < num_consumers; i++) {
  consumers[i].consumer = regulator_get(dev,
            consumers[i].supply);
  if (IS_ERR(consumers[i].consumer)) {
   ret = PTR_ERR(consumers[i].consumer);
   consumers[i].consumer = ((void*)0);
   goto err;
  }
 }

 return 0;

err:
 if (ret != -EPROBE_DEFER)
  dev_err(dev, "Failed to get supply '%s': %d\n",
   consumers[i].supply, ret);
 else
  dev_dbg(dev, "Failed to get supply '%s', deferring\n",
   consumers[i].supply);

 while (--i >= 0)
  regulator_put(consumers[i].consumer);

 return ret;
}
