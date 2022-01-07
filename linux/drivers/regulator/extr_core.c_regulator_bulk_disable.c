
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_bulk_data {int supply; int consumer; } ;


 int pr_err (char*,int ,int) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;

int regulator_bulk_disable(int num_consumers,
      struct regulator_bulk_data *consumers)
{
 int i;
 int ret, r;

 for (i = num_consumers - 1; i >= 0; --i) {
  ret = regulator_disable(consumers[i].consumer);
  if (ret != 0)
   goto err;
 }

 return 0;

err:
 pr_err("Failed to disable %s: %d\n", consumers[i].supply, ret);
 for (++i; i < num_consumers; ++i) {
  r = regulator_enable(consumers[i].consumer);
  if (r != 0)
   pr_err("Failed to re-enable %s: %d\n",
          consumers[i].supply, r);
 }

 return ret;
}
