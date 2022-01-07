
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct power_supply {TYPE_1__* desc; int use_cnt; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_2__ {int (* property_is_writeable ) (struct power_supply*,int) ;} ;


 int ENODEV ;
 scalar_t__ atomic_read (int *) ;
 int stub1 (struct power_supply*,int) ;

int power_supply_property_is_writeable(struct power_supply *psy,
     enum power_supply_property psp)
{
 if (atomic_read(&psy->use_cnt) <= 0 ||
   !psy->desc->property_is_writeable)
  return -ENODEV;

 return psy->desc->property_is_writeable(psy, psp);
}
