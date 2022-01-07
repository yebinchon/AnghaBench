
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct power_supply_desc {int external_power_changed; int get_property; int num_properties; int properties; int type; int name; } ;
struct power_supply_config {struct bq27xxx_device_info* drv_data; int of_node; } ;
struct bq27xxx_device_info {size_t chip; int list; int bat; TYPE_1__* dev; int name; int opts; int dm_regs; int unseal_key; int regs; int lock; int work; } ;
struct TYPE_6__ {int props_size; int props; int opts; int dm_regs; int unseal_key; int regs; } ;
struct TYPE_5__ {int of_node; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int POWER_SUPPLY_TYPE_BATTERY ;
 int PTR_ERR (int ) ;
 int bq27xxx_battery_devices ;
 int bq27xxx_battery_get_property ;
 int bq27xxx_battery_poll ;
 int bq27xxx_battery_settings (struct bq27xxx_device_info*) ;
 int bq27xxx_battery_update (struct bq27xxx_device_info*) ;
 TYPE_4__* bq27xxx_chip_data ;
 int bq27xxx_external_power_changed ;
 int bq27xxx_list_lock ;
 int dev_err (TYPE_1__*,char*) ;
 struct power_supply_desc* devm_kzalloc (TYPE_1__*,int,int ) ;
 int list_add (int *,int *) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int power_supply_register_no_ws (TYPE_1__*,struct power_supply_desc*,struct power_supply_config*) ;

int bq27xxx_battery_setup(struct bq27xxx_device_info *di)
{
 struct power_supply_desc *psy_desc;
 struct power_supply_config psy_cfg = {
  .of_node = di->dev->of_node,
  .drv_data = di,
 };

 INIT_DELAYED_WORK(&di->work, bq27xxx_battery_poll);
 mutex_init(&di->lock);

 di->regs = bq27xxx_chip_data[di->chip].regs;
 di->unseal_key = bq27xxx_chip_data[di->chip].unseal_key;
 di->dm_regs = bq27xxx_chip_data[di->chip].dm_regs;
 di->opts = bq27xxx_chip_data[di->chip].opts;

 psy_desc = devm_kzalloc(di->dev, sizeof(*psy_desc), GFP_KERNEL);
 if (!psy_desc)
  return -ENOMEM;

 psy_desc->name = di->name;
 psy_desc->type = POWER_SUPPLY_TYPE_BATTERY;
 psy_desc->properties = bq27xxx_chip_data[di->chip].props;
 psy_desc->num_properties = bq27xxx_chip_data[di->chip].props_size;
 psy_desc->get_property = bq27xxx_battery_get_property;
 psy_desc->external_power_changed = bq27xxx_external_power_changed;

 di->bat = power_supply_register_no_ws(di->dev, psy_desc, &psy_cfg);
 if (IS_ERR(di->bat)) {
  dev_err(di->dev, "failed to register battery\n");
  return PTR_ERR(di->bat);
 }

 bq27xxx_battery_settings(di);
 bq27xxx_battery_update(di);

 mutex_lock(&bq27xxx_list_lock);
 list_add(&di->list, &bq27xxx_battery_devices);
 mutex_unlock(&bq27xxx_list_lock);

 return 0;
}
