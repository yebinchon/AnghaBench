
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_bulk_data {int ret; int consumer; int supply; } ;


 int ASYNC_DOMAIN_EXCLUSIVE (int ) ;
 int async_domain ;
 int async_schedule_domain (int ,struct regulator_bulk_data*,int *) ;
 int async_synchronize_full_domain (int *) ;
 int pr_err (char*,int ,int) ;
 int regulator_bulk_enable_async ;
 int regulator_disable (int ) ;

int regulator_bulk_enable(int num_consumers,
     struct regulator_bulk_data *consumers)
{
 ASYNC_DOMAIN_EXCLUSIVE(async_domain);
 int i;
 int ret = 0;

 for (i = 0; i < num_consumers; i++) {
  async_schedule_domain(regulator_bulk_enable_async,
          &consumers[i], &async_domain);
 }

 async_synchronize_full_domain(&async_domain);


 for (i = 0; i < num_consumers; i++) {
  if (consumers[i].ret != 0) {
   ret = consumers[i].ret;
   goto err;
  }
 }

 return 0;

err:
 for (i = 0; i < num_consumers; i++) {
  if (consumers[i].ret < 0)
   pr_err("Failed to enable %s: %d\n", consumers[i].supply,
          consumers[i].ret);
  else
   regulator_disable(consumers[i].consumer);
 }

 return ret;
}
