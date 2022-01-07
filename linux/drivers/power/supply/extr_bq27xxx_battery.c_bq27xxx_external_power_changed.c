
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int dummy; } ;
struct bq27xxx_device_info {int work; } ;


 int cancel_delayed_work_sync (int *) ;
 struct bq27xxx_device_info* power_supply_get_drvdata (struct power_supply*) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void bq27xxx_external_power_changed(struct power_supply *psy)
{
 struct bq27xxx_device_info *di = power_supply_get_drvdata(psy);

 cancel_delayed_work_sync(&di->work);
 schedule_delayed_work(&di->work, 0);
}
