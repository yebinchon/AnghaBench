
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct power_supply {TYPE_1__* desc; int use_cnt; } ;
struct TYPE_2__ {scalar_t__ type; int (* set_charged ) (struct power_supply*) ;} ;


 int EINVAL ;
 scalar_t__ POWER_SUPPLY_TYPE_BATTERY ;
 scalar_t__ atomic_read (int *) ;
 int stub1 (struct power_supply*) ;

int power_supply_set_battery_charged(struct power_supply *psy)
{
 if (atomic_read(&psy->use_cnt) >= 0 &&
   psy->desc->type == POWER_SUPPLY_TYPE_BATTERY &&
   psy->desc->set_charged) {
  psy->desc->set_charged(psy);
  return 0;
 }

 return -EINVAL;
}
