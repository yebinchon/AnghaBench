
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_power_supplies {int supplies_count; int supplies_lock; struct gb_power_supplies* supply; } ;


 int _gb_power_supply_release (struct gb_power_supplies*) ;
 int kfree (struct gb_power_supplies*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void _gb_power_supplies_release(struct gb_power_supplies *supplies)
{
 int i;

 if (!supplies->supply)
  return;

 mutex_lock(&supplies->supplies_lock);
 for (i = 0; i < supplies->supplies_count; i++)
  _gb_power_supply_release(&supplies->supply[i]);
 kfree(supplies->supply);
 mutex_unlock(&supplies->supplies_lock);
 kfree(supplies);
}
