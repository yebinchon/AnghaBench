
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct z2_charger* properties; } ;
struct z2_charger {TYPE_2__ batt_ps_desc; int bat_work; int batt_ps; int work_lock; struct i2c_client* client; struct z2_battery_info* info; int bat_status; } ;
struct z2_battery_info {scalar_t__ charge_gpio; } ;
struct power_supply_config {struct z2_charger* drv_data; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_4__ {struct z2_battery_info* platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int IRQ_TYPE_EDGE_BOTH ;
 scalar_t__ IS_ERR (int ) ;
 int POWER_SUPPLY_STATUS_UNKNOWN ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_1__*,char*) ;
 int free_irq (int ,struct z2_charger*) ;
 int gpio_direction_input (scalar_t__) ;
 int gpio_free (scalar_t__) ;
 scalar_t__ gpio_is_valid (scalar_t__) ;
 int gpio_request (scalar_t__,char*) ;
 int gpio_to_irq (scalar_t__) ;
 int i2c_set_clientdata (struct i2c_client*,struct z2_charger*) ;
 int irq_set_irq_type (int ,int ) ;
 int kfree (struct z2_charger*) ;
 struct z2_charger* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int power_supply_register (TYPE_1__*,TYPE_2__*,struct power_supply_config*) ;
 int request_irq (int ,int ,int ,char*,struct z2_charger*) ;
 int schedule_work (int *) ;
 int z2_batt_ps_init (struct z2_charger*,int) ;
 int z2_batt_work ;
 int z2_charge_switch_irq ;

__attribute__((used)) static int z2_batt_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 int ret = 0;
 int props = 1;
 struct z2_charger *charger;
 struct z2_battery_info *info = client->dev.platform_data;
 struct power_supply_config psy_cfg = {};

 if (info == ((void*)0)) {
  dev_err(&client->dev,
   "Please set platform device platform_data"
   " to a valid z2_battery_info pointer!\n");
  return -EINVAL;
 }

 charger = kzalloc(sizeof(*charger), GFP_KERNEL);
 if (charger == ((void*)0))
  return -ENOMEM;

 charger->bat_status = POWER_SUPPLY_STATUS_UNKNOWN;
 charger->info = info;
 charger->client = client;
 i2c_set_clientdata(client, charger);
 psy_cfg.drv_data = charger;

 mutex_init(&charger->work_lock);

 if (info->charge_gpio >= 0 && gpio_is_valid(info->charge_gpio)) {
  ret = gpio_request(info->charge_gpio, "BATT CHRG");
  if (ret)
   goto err;

  ret = gpio_direction_input(info->charge_gpio);
  if (ret)
   goto err2;

  irq_set_irq_type(gpio_to_irq(info->charge_gpio),
     IRQ_TYPE_EDGE_BOTH);
  ret = request_irq(gpio_to_irq(info->charge_gpio),
    z2_charge_switch_irq, 0,
    "AC Detect", charger);
  if (ret)
   goto err3;
 }

 ret = z2_batt_ps_init(charger, props);
 if (ret)
  goto err3;

 INIT_WORK(&charger->bat_work, z2_batt_work);

 charger->batt_ps = power_supply_register(&client->dev,
       &charger->batt_ps_desc,
       &psy_cfg);
 if (IS_ERR(charger->batt_ps)) {
  ret = PTR_ERR(charger->batt_ps);
  goto err4;
 }

 schedule_work(&charger->bat_work);

 return 0;

err4:
 kfree(charger->batt_ps_desc.properties);
err3:
 if (info->charge_gpio >= 0 && gpio_is_valid(info->charge_gpio))
  free_irq(gpio_to_irq(info->charge_gpio), charger);
err2:
 if (info->charge_gpio >= 0 && gpio_is_valid(info->charge_gpio))
  gpio_free(info->charge_gpio);
err:
 kfree(charger);
 return ret;
}
