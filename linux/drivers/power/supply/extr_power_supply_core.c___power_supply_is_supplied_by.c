
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct power_supply {int num_supplies; int num_supplicants; TYPE_1__* desc; int * supplied_to; int * supplied_from; } ;
struct TYPE_2__ {int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static bool __power_supply_is_supplied_by(struct power_supply *supplier,
      struct power_supply *supply)
{
 int i;

 if (!supply->supplied_from && !supplier->supplied_to)
  return 0;


 if (supply->supplied_from) {
  if (!supplier->desc->name)
   return 0;
  for (i = 0; i < supply->num_supplies; i++)
   if (!strcmp(supplier->desc->name, supply->supplied_from[i]))
    return 1;
 } else {
  if (!supply->desc->name)
   return 0;
  for (i = 0; i < supplier->num_supplicants; i++)
   if (!strcmp(supplier->supplied_to[i], supply->desc->name))
    return 1;
 }

 return 0;
}
