
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_power_supply {int registered; int work; int update_interval; int supply_lock; int name; int model_name; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int __gb_power_supply_set_name (int ,int ,int) ;
 int gb_power_supply_register (struct gb_power_supply*) ;
 int gb_power_supply_work ;
 int mutex_init (int *) ;
 int schedule_delayed_work (int *,int ) ;
 int update_interval_init ;

__attribute__((used)) static int gb_power_supply_enable(struct gb_power_supply *gbpsy)
{
 int ret;


 ret = __gb_power_supply_set_name(gbpsy->model_name, gbpsy->name,
       sizeof(gbpsy->name));
 if (ret < 0)
  return ret;

 mutex_init(&gbpsy->supply_lock);

 ret = gb_power_supply_register(gbpsy);
 if (ret < 0)
  return ret;

 gbpsy->update_interval = update_interval_init;
 INIT_DELAYED_WORK(&gbpsy->work, gb_power_supply_work);
 schedule_delayed_work(&gbpsy->work, 0);


 gbpsy->registered = 1;

 return 0;
}
