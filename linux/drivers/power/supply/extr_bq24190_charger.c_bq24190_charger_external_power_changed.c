
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int dummy; } ;
struct bq24190_dev_info {int input_current_limit_work; } ;


 int msecs_to_jiffies (int) ;
 struct bq24190_dev_info* power_supply_get_drvdata (struct power_supply*) ;
 int queue_delayed_work (int ,int *,int ) ;
 int system_wq ;

__attribute__((used)) static void bq24190_charger_external_power_changed(struct power_supply *psy)
{
 struct bq24190_dev_info *bdi = power_supply_get_drvdata(psy);
 queue_delayed_work(system_wq, &bdi->input_current_limit_work,
      msecs_to_jiffies(300));
}
