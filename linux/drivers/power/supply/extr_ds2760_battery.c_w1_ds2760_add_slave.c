
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct device {int id; scalar_t__ of_node; } ;
struct w1_slave {struct ds2760_device_info* family_data; struct device dev; } ;
struct power_supply_config {scalar_t__ of_node; struct ds2760_device_info* drv_data; } ;
struct TYPE_3__ {int notifier_call; } ;
struct TYPE_4__ {char* name; int external_power_changed; int set_charged; int property_is_writeable; int set_property; int get_property; int num_properties; int properties; int type; } ;
struct ds2760_device_info {char* raw; int bat; TYPE_1__ pm_notifier; int monitor_work; int monitor_wqueue; int set_charged_work; struct device* dev; TYPE_2__ bat_desc; int charge_status; } ;
typedef int name ;


 int ARRAY_SIZE (int ) ;
 char DS2760_STATUS_PMOD ;
 size_t DS2760_STATUS_REG ;
 int ENOMEM ;
 int ESRCH ;
 int GFP_KERNEL ;
 int HZ ;
 int INIT_DELAYED_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int POWER_SUPPLY_STATUS_UNKNOWN ;
 int POWER_SUPPLY_TYPE_BATTERY ;
 int PTR_ERR (int ) ;
 int WQ_MEM_RECLAIM ;
 int alloc_ordered_workqueue (char*,int ) ;
 int cache_time ;
 scalar_t__ current_accum ;
 int dev_err (struct device*,char*) ;
 struct ds2760_device_info* devm_kzalloc (struct device*,int,int ) ;
 int ds2760_battery_external_power_changed ;
 int ds2760_battery_get_property ;
 int ds2760_battery_property_is_writeable ;
 int ds2760_battery_props ;
 int ds2760_battery_read_status (struct ds2760_device_info*) ;
 int ds2760_battery_set_charged ;
 int ds2760_battery_set_charged_work ;
 int ds2760_battery_set_current_accum (struct ds2760_device_info*,scalar_t__) ;
 int ds2760_battery_set_property ;
 int ds2760_battery_work ;
 int ds2760_battery_write_rated_capacity (struct ds2760_device_info*,int) ;
 int ds2760_battery_write_status (struct ds2760_device_info*,char) ;
 int ds2760_pm_notifier ;
 int of_property_read_bool (scalar_t__,char*) ;
 int of_property_read_u32 (scalar_t__,char*,int*) ;
 int pmod_enabled ;
 int power_supply_register (struct device*,TYPE_2__*,struct power_supply_config*) ;
 int power_supply_unregister (int ) ;
 int queue_delayed_work (int ,int *,int) ;
 int rated_capacity ;
 int register_pm_notifier (TYPE_1__*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int w1_ds2760_add_slave(struct w1_slave *sl)
{
 struct power_supply_config psy_cfg = {};
 struct ds2760_device_info *di;
 struct device *dev = &sl->dev;
 int retval = 0;
 char name[32];
 char status;

 di = devm_kzalloc(dev, sizeof(*di), GFP_KERNEL);
 if (!di) {
  retval = -ENOMEM;
  goto di_alloc_failed;
 }

 snprintf(name, sizeof(name), "ds2760-battery.%d", dev->id);

 di->dev = dev;
 di->bat_desc.name = name;
 di->bat_desc.type = POWER_SUPPLY_TYPE_BATTERY;
 di->bat_desc.properties = ds2760_battery_props;
 di->bat_desc.num_properties = ARRAY_SIZE(ds2760_battery_props);
 di->bat_desc.get_property = ds2760_battery_get_property;
 di->bat_desc.set_property = ds2760_battery_set_property;
 di->bat_desc.property_is_writeable =
      ds2760_battery_property_is_writeable;
 di->bat_desc.set_charged = ds2760_battery_set_charged;
 di->bat_desc.external_power_changed =
      ds2760_battery_external_power_changed;

 psy_cfg.drv_data = di;

 if (dev->of_node) {
  u32 tmp;

  psy_cfg.of_node = dev->of_node;

  if (!of_property_read_bool(dev->of_node, "maxim,pmod-enabled"))
   pmod_enabled = 1;

  if (!of_property_read_u32(dev->of_node,
       "maxim,cache-time-ms", &tmp))
   cache_time = tmp;

  if (!of_property_read_u32(dev->of_node,
       "rated-capacity-microamp-hours",
       &tmp))
   rated_capacity = tmp / 10;
 }

 di->charge_status = POWER_SUPPLY_STATUS_UNKNOWN;

 sl->family_data = di;


 ds2760_battery_read_status(di);
 status = di->raw[DS2760_STATUS_REG];
 if (pmod_enabled)
  status |= DS2760_STATUS_PMOD;
 else
  status &= ~DS2760_STATUS_PMOD;

 ds2760_battery_write_status(di, status);


 if (rated_capacity)
  ds2760_battery_write_rated_capacity(di, rated_capacity);



 if (current_accum)
  ds2760_battery_set_current_accum(di, current_accum);

 di->bat = power_supply_register(dev, &di->bat_desc, &psy_cfg);
 if (IS_ERR(di->bat)) {
  dev_err(di->dev, "failed to register battery\n");
  retval = PTR_ERR(di->bat);
  goto batt_failed;
 }

 INIT_DELAYED_WORK(&di->monitor_work, ds2760_battery_work);
 INIT_DELAYED_WORK(&di->set_charged_work,
     ds2760_battery_set_charged_work);
 di->monitor_wqueue = alloc_ordered_workqueue(name, WQ_MEM_RECLAIM);
 if (!di->monitor_wqueue) {
  retval = -ESRCH;
  goto workqueue_failed;
 }
 queue_delayed_work(di->monitor_wqueue, &di->monitor_work, HZ * 1);

 di->pm_notifier.notifier_call = ds2760_pm_notifier;
 register_pm_notifier(&di->pm_notifier);

 goto success;

workqueue_failed:
 power_supply_unregister(di->bat);
batt_failed:
di_alloc_failed:
success:
 return retval;
}
