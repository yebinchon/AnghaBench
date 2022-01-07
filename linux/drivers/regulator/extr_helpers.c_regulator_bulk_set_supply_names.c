
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_bulk_data {char* supply; } ;



void regulator_bulk_set_supply_names(struct regulator_bulk_data *consumers,
         const char *const *supply_names,
         unsigned int num_supplies)
{
 unsigned int i;

 for (i = 0; i < num_supplies; i++)
  consumers[i].supply = supply_names[i];
}
