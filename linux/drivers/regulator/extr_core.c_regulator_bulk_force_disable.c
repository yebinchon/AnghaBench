
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_bulk_data {int ret; int consumer; } ;


 int regulator_force_disable (int ) ;

int regulator_bulk_force_disable(int num_consumers,
      struct regulator_bulk_data *consumers)
{
 int i;
 int ret = 0;

 for (i = 0; i < num_consumers; i++) {
  consumers[i].ret =
       regulator_force_disable(consumers[i].consumer);


  if (consumers[i].ret && !ret)
   ret = consumers[i].ret;
 }

 return ret;
}
