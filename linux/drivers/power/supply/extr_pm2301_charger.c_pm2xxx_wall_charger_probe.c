
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_9__ ;
typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_20__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_13__ ;


typedef scalar_t__ u8 ;
struct power_supply_config {int num_supplicants; int supplied_to; } ;
struct pm2xxx_platform_data {scalar_t__ battery; TYPE_4__* wall_charger; } ;
struct TYPE_31__ {int * update_curr; int * kick_wd; int * enable; } ;
struct TYPE_32__ {int enabled; int external; TYPE_7__* psy; int wdt_refresh; void* max_out_curr; void* max_out_volt; TYPE_5__ ops; } ;
struct TYPE_26__ {int charger_connected; } ;
struct TYPE_25__ {void** properties; int num_properties; int get_property; int type; int name; } ;
struct TYPE_29__ {struct i2c_device_id* pm2xxx_id; struct i2c_client* pm2xxx_i2c; } ;
struct pm2xxx_charger {int ac_conn; int * charger_wq; TYPE_7__* regu; TYPE_6__ ac_chg; TYPE_4__* pdata; int lpn_pin; TYPE_1__ ac; TYPE_9__* dev; int lock; TYPE_13__ ac_chg_desc; int check_hw_failure_work; int check_main_thermal_prot_work; int ac_work; TYPE_3__ config; scalar_t__ bat; int * pm2_int; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_34__ {struct pm2xxx_platform_data* platform_data; } ;
struct i2c_client {int adapter; TYPE_9__ dev; } ;
struct TYPE_28__ {int kobj; } ;
struct TYPE_33__ {TYPE_2__ dev; } ;
struct TYPE_30__ {int gpio_irq_number; int lpn_gpio; int irq_type; int num_supplicants; int supplied_to; int label; } ;
struct TYPE_27__ {int name; int isr; } ;


 int AB8500_MAIN_CH_DET ;
 int AB8500_POW_KEY_1_ON ;
 int ARRAY_SIZE (void**) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_FUNC_SMBUS_READ_WORD_DATA ;
 int INIT_DEFERRABLE_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (TYPE_7__*) ;
 int PM2XXX_AUTOSUSPEND_DELAY ;
 int PM2XXX_NUM_INT_REG ;
 int POWER_SUPPLY_TYPE_MAINS ;
 int PTR_ERR (TYPE_7__*) ;
 int WD_KICK_INTERVAL ;
 int WQ_MEM_RECLAIM ;
 int ab8500_override_turn_on_stat (int ,int ) ;
 int * alloc_ordered_workqueue (char*,int ) ;
 int destroy_workqueue (int *) ;
 int dev_err (TYPE_9__*,char*,...) ;
 int dev_info (TYPE_9__*,char*) ;
 int disable_irq_wake (int ) ;
 int enable_irq_wake (int ) ;
 int free_irq (int ,struct pm2xxx_charger*) ;
 int gpio_direction_output (int ,int ) ;
 int gpio_free (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_request (int ,char*) ;
 int gpio_to_irq (int ) ;
 int i2c_check_functionality (int ,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct pm2xxx_charger*) ;
 int kfree (struct pm2xxx_charger*) ;
 struct pm2xxx_charger* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int pm2xxx_charger_ac_en ;
 int pm2xxx_charger_ac_get_property ;
 void** pm2xxx_charger_ac_props ;
 int pm2xxx_charger_ac_work ;
 int pm2xxx_charger_check_hw_failure_work ;
 int pm2xxx_charger_check_main_thermal_prot_work ;
 void** pm2xxx_charger_current_map ;
 int pm2xxx_charger_detection (struct pm2xxx_charger*,scalar_t__*) ;
 TYPE_20__* pm2xxx_charger_irq ;
 int pm2xxx_charger_update_charger_current ;
 void** pm2xxx_charger_voltage_map ;
 int pm2xxx_charger_watchdog_kick ;
 int pm2xxx_int ;
 int * pm2xxx_interrupt_registers ;
 int pm2xxx_reg_read (struct pm2xxx_charger*,int ,scalar_t__*) ;
 int pm_runtime_enable (TYPE_9__*) ;
 int pm_runtime_resume (TYPE_9__*) ;
 int pm_runtime_set_active (TYPE_9__*) ;
 int pm_runtime_set_autosuspend_delay (TYPE_9__*,int ) ;
 int pm_runtime_use_autosuspend (TYPE_9__*) ;
 int power_supply_changed (TYPE_7__*) ;
 TYPE_7__* power_supply_register (TYPE_9__*,TYPE_13__*,struct power_supply_config*) ;
 int power_supply_unregister (TYPE_7__*) ;
 TYPE_7__* regulator_get (TYPE_9__*,char*) ;
 int regulator_put (TYPE_7__*) ;
 int request_threaded_irq (int ,int *,int ,int ,int ,struct pm2xxx_charger*) ;
 int set_lpn_pin (struct pm2xxx_charger*) ;
 int sysfs_notify (int *,int *,char*) ;

__attribute__((used)) static int pm2xxx_wall_charger_probe(struct i2c_client *i2c_client,
  const struct i2c_device_id *id)
{
 struct pm2xxx_platform_data *pl_data = i2c_client->dev.platform_data;
 struct power_supply_config psy_cfg = {};
 struct pm2xxx_charger *pm2;
 int ret = 0;
 u8 val;
 int i;

 if (!pl_data) {
  dev_err(&i2c_client->dev, "No platform data supplied\n");
  return -EINVAL;
 }

 pm2 = kzalloc(sizeof(struct pm2xxx_charger), GFP_KERNEL);
 if (!pm2) {
  dev_err(&i2c_client->dev, "pm2xxx_charger allocation failed\n");
  return -ENOMEM;
 }


 pm2->dev = &i2c_client->dev;

 pm2->pm2_int = &pm2xxx_int;


 if (!pl_data->wall_charger) {
  dev_err(pm2->dev, "no charger platform data supplied\n");
  ret = -EINVAL;
  goto free_device_info;
 }

 pm2->pdata = pl_data->wall_charger;


 if (!pl_data->battery) {
  dev_err(pm2->dev, "no battery platform data supplied\n");
  ret = -EINVAL;
  goto free_device_info;
 }

 pm2->bat = pl_data->battery;

 if (!i2c_check_functionality(i2c_client->adapter,
   I2C_FUNC_SMBUS_BYTE_DATA |
   I2C_FUNC_SMBUS_READ_WORD_DATA)) {
  ret = -ENODEV;
  dev_info(pm2->dev, "pm2301 i2c_check_functionality failed\n");
  goto free_device_info;
 }

 pm2->config.pm2xxx_i2c = i2c_client;
 pm2->config.pm2xxx_id = (struct i2c_device_id *) id;
 i2c_set_clientdata(i2c_client, pm2);



 pm2->ac_chg_desc.name = pm2->pdata->label;
 pm2->ac_chg_desc.type = POWER_SUPPLY_TYPE_MAINS;
 pm2->ac_chg_desc.properties = pm2xxx_charger_ac_props;
 pm2->ac_chg_desc.num_properties = ARRAY_SIZE(pm2xxx_charger_ac_props);
 pm2->ac_chg_desc.get_property = pm2xxx_charger_ac_get_property;

 psy_cfg.supplied_to = pm2->pdata->supplied_to;
 psy_cfg.num_supplicants = pm2->pdata->num_supplicants;

 pm2->ac_chg.ops.enable = &pm2xxx_charger_ac_en;
 pm2->ac_chg.ops.kick_wd = &pm2xxx_charger_watchdog_kick;
 pm2->ac_chg.ops.update_curr = &pm2xxx_charger_update_charger_current;
 pm2->ac_chg.max_out_volt = pm2xxx_charger_voltage_map[
  ARRAY_SIZE(pm2xxx_charger_voltage_map) - 1];
 pm2->ac_chg.max_out_curr = pm2xxx_charger_current_map[
  ARRAY_SIZE(pm2xxx_charger_current_map) - 1];
 pm2->ac_chg.wdt_refresh = WD_KICK_INTERVAL;
 pm2->ac_chg.enabled = 1;
 pm2->ac_chg.external = 1;


 pm2->charger_wq = alloc_ordered_workqueue("pm2xxx_charger_wq",
        WQ_MEM_RECLAIM);
 if (pm2->charger_wq == ((void*)0)) {
  ret = -ENOMEM;
  dev_err(pm2->dev, "failed to create work queue\n");
  goto free_device_info;
 }


 INIT_WORK(&pm2->ac_work, pm2xxx_charger_ac_work);


 INIT_WORK(&pm2->check_main_thermal_prot_work,
  pm2xxx_charger_check_main_thermal_prot_work);


 INIT_DEFERRABLE_WORK(&pm2->check_hw_failure_work,
  pm2xxx_charger_check_hw_failure_work);






 pm2->regu = regulator_get(pm2->dev, "vddadc");
 if (IS_ERR(pm2->regu)) {
  ret = PTR_ERR(pm2->regu);
  dev_err(pm2->dev, "failed to get vddadc regulator\n");
  goto free_charger_wq;
 }


 pm2->ac_chg.psy = power_supply_register(pm2->dev, &pm2->ac_chg_desc,
      &psy_cfg);
 if (IS_ERR(pm2->ac_chg.psy)) {
  dev_err(pm2->dev, "failed to register AC charger\n");
  ret = PTR_ERR(pm2->ac_chg.psy);
  goto free_regulator;
 }


 ret = request_threaded_irq(gpio_to_irq(pm2->pdata->gpio_irq_number),
    ((void*)0),
    pm2xxx_charger_irq[0].isr,
    pm2->pdata->irq_type,
    pm2xxx_charger_irq[0].name, pm2);

 if (ret != 0) {
  dev_err(pm2->dev, "failed to request %s IRQ %d: %d\n",
  pm2xxx_charger_irq[0].name,
   gpio_to_irq(pm2->pdata->gpio_irq_number), ret);
  goto unregister_pm2xxx_charger;
 }

 ret = pm_runtime_set_active(pm2->dev);
 if (ret)
  dev_err(pm2->dev, "set active Error\n");

 pm_runtime_enable(pm2->dev);
 pm_runtime_set_autosuspend_delay(pm2->dev, PM2XXX_AUTOSUSPEND_DELAY);
 pm_runtime_use_autosuspend(pm2->dev);
 pm_runtime_resume(pm2->dev);


 ret = enable_irq_wake(gpio_to_irq(pm2->pdata->gpio_irq_number));
 if (ret) {
  dev_err(pm2->dev, "failed to set irq wake\n");
  goto unregister_pm2xxx_interrupt;
 }

 mutex_init(&pm2->lock);

 if (gpio_is_valid(pm2->pdata->lpn_gpio)) {

  pm2->lpn_pin = pm2->pdata->lpn_gpio;






  ret = gpio_request(pm2->lpn_pin, "pm2301_lpm_gpio");

  if (ret < 0) {
   dev_err(pm2->dev, "pm2301_lpm_gpio request failed\n");
   goto disable_pm2_irq_wake;
  }
  ret = gpio_direction_output(pm2->lpn_pin, 0);
  if (ret < 0) {
   dev_err(pm2->dev, "pm2301_lpm_gpio direction failed\n");
   goto free_gpio;
  }
  set_lpn_pin(pm2);
 }


 for (i = 0; i < PM2XXX_NUM_INT_REG; i++)
  pm2xxx_reg_read(pm2,
   pm2xxx_interrupt_registers[i],
   &val);

 ret = pm2xxx_charger_detection(pm2, &val);

 if ((ret == 0) && val) {
  pm2->ac.charger_connected = 1;
  ab8500_override_turn_on_stat(~AB8500_POW_KEY_1_ON,
          AB8500_MAIN_CH_DET);
  pm2->ac_conn = 1;
  power_supply_changed(pm2->ac_chg.psy);
  sysfs_notify(&pm2->ac_chg.psy->dev.kobj, ((void*)0), "present");
 }

 return 0;

free_gpio:
 if (gpio_is_valid(pm2->lpn_pin))
  gpio_free(pm2->lpn_pin);
disable_pm2_irq_wake:
 disable_irq_wake(gpio_to_irq(pm2->pdata->gpio_irq_number));
unregister_pm2xxx_interrupt:

 free_irq(gpio_to_irq(pm2->pdata->gpio_irq_number), pm2);
unregister_pm2xxx_charger:

 power_supply_unregister(pm2->ac_chg.psy);
free_regulator:

 regulator_put(pm2->regu);
free_charger_wq:
 destroy_workqueue(pm2->charger_wq);
free_device_info:
 kfree(pm2);

 return ret;
}
