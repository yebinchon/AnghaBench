
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int dummy; } ;


 scalar_t__ module_initialized ;
 int power_supply_changed (struct power_supply*) ;

__attribute__((used)) static inline void signal_power_supply_changed(struct power_supply *psy)
{
 if (module_initialized)
  power_supply_changed(psy);
}
