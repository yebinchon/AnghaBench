
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int dummy; } ;
struct gab {int bat_work; } ;


 int msecs_to_jiffies (int ) ;
 int schedule_delayed_work (int *,int ) ;
 struct gab* to_generic_bat (struct power_supply*) ;

__attribute__((used)) static void gab_ext_power_changed(struct power_supply *psy)
{
 struct gab *adc_bat = to_generic_bat(psy);

 schedule_delayed_work(&adc_bat->bat_work, msecs_to_jiffies(0));
}
