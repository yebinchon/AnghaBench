
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int online_trig_name; int online_trig; } ;


 int kfree (int ) ;
 int led_trigger_unregister_simple (int ) ;

__attribute__((used)) static void power_supply_remove_gen_triggers(struct power_supply *psy)
{
 led_trigger_unregister_simple(psy->online_trig);
 kfree(psy->online_trig_name);
}
