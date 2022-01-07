
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbs_info {int poll_retry_count; int poll_time; int work; } ;
struct power_supply {int dummy; } ;


 int HZ ;
 int cancel_delayed_work_sync (int *) ;
 struct sbs_info* power_supply_get_drvdata (struct power_supply*) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void sbs_external_power_changed(struct power_supply *psy)
{
 struct sbs_info *chip = power_supply_get_drvdata(psy);


 cancel_delayed_work_sync(&chip->work);

 schedule_delayed_work(&chip->work, HZ);
 chip->poll_time = chip->poll_retry_count;
}
