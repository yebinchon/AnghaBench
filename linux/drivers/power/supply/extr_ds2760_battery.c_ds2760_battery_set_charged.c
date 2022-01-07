
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int dummy; } ;
struct ds2760_device_info {int set_charged_work; int monitor_wqueue; } ;


 int HZ ;
 int mod_delayed_work (int ,int *,int) ;
 struct ds2760_device_info* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static void ds2760_battery_set_charged(struct power_supply *psy)
{
 struct ds2760_device_info *di = power_supply_get_drvdata(psy);



 mod_delayed_work(di->monitor_wqueue, &di->set_charged_work, HZ * 20);
}
