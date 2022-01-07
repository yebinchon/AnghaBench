
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_power_supply {int psy; scalar_t__ registered; int work; scalar_t__ update_interval; } ;


 int _gb_power_supply_free (struct gb_power_supply*) ;
 int cancel_delayed_work_sync (int *) ;
 int power_supply_unregister (int ) ;

__attribute__((used)) static void _gb_power_supply_release(struct gb_power_supply *gbpsy)
{
 gbpsy->update_interval = 0;

 cancel_delayed_work_sync(&gbpsy->work);

 if (gbpsy->registered)
  power_supply_unregister(gbpsy->psy);

 _gb_power_supply_free(gbpsy);
}
