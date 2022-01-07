
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct power_supply {TYPE_1__* desc; int use_cnt; } ;
struct TYPE_2__ {int (* external_power_changed ) (struct power_supply*) ;} ;


 scalar_t__ atomic_read (int *) ;
 int stub1 (struct power_supply*) ;

void power_supply_external_power_changed(struct power_supply *psy)
{
 if (atomic_read(&psy->use_cnt) <= 0 ||
   !psy->desc->external_power_changed)
  return;

 psy->desc->external_power_changed(psy);
}
