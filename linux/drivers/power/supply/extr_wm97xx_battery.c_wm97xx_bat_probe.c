
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct wm97xx_batt_pdata {scalar_t__ charge_gpio; scalar_t__ batt_tech; scalar_t__ temp_aux; scalar_t__ batt_aux; scalar_t__ max_voltage; scalar_t__ min_voltage; char* batt_name; } ;
struct power_supply_config {struct wm97xx_batt_pdata* drv_data; } ;
struct TYPE_6__ {struct wm97xx_batt_pdata* platform_data; } ;
struct platform_device {int id; TYPE_1__ dev; } ;
struct TYPE_7__ {char* name; int num_properties; int * properties; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int IS_ERR (int ) ;
 int POWER_SUPPLY_PROP_PRESENT ;
 int POWER_SUPPLY_PROP_STATUS ;
 int POWER_SUPPLY_PROP_TECHNOLOGY ;
 int POWER_SUPPLY_PROP_TEMP ;
 int POWER_SUPPLY_PROP_VOLTAGE_MAX ;
 int POWER_SUPPLY_PROP_VOLTAGE_MIN ;
 int POWER_SUPPLY_PROP_VOLTAGE_NOW ;
 int PTR_ERR (int ) ;
 int bat_psy ;
 TYPE_2__ bat_psy_desc ;
 int bat_work ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_info (TYPE_1__*,char*) ;
 int free_irq (int ,struct platform_device*) ;
 int gpio_direction_input (scalar_t__) ;
 int gpio_free (scalar_t__) ;
 scalar_t__ gpio_is_valid (scalar_t__) ;
 int gpio_request (scalar_t__,char*) ;
 int gpio_to_irq (scalar_t__) ;
 int * kcalloc (int,int,int ) ;
 int kfree (int *) ;
 int power_supply_register (TYPE_1__*,TYPE_2__*,struct power_supply_config*) ;
 int * prop ;
 int request_irq (int ,int ,int ,char*,struct platform_device*) ;
 int schedule_work (int *) ;
 int wm97xx_bat_work ;
 int wm97xx_chrg_irq ;

__attribute__((used)) static int wm97xx_bat_probe(struct platform_device *dev)
{
 int ret = 0;
 int props = 1;
 int i = 0;
 struct wm97xx_batt_pdata *pdata = dev->dev.platform_data;
 struct power_supply_config cfg = {};

 if (!pdata) {
  dev_err(&dev->dev, "No platform data supplied\n");
  return -EINVAL;
 }

 cfg.drv_data = pdata;

 if (dev->id != -1)
  return -EINVAL;

 if (gpio_is_valid(pdata->charge_gpio)) {
  ret = gpio_request(pdata->charge_gpio, "BATT CHRG");
  if (ret)
   goto err;
  ret = gpio_direction_input(pdata->charge_gpio);
  if (ret)
   goto err2;
  ret = request_irq(gpio_to_irq(pdata->charge_gpio),
    wm97xx_chrg_irq, 0,
    "AC Detect", dev);
  if (ret)
   goto err2;
  props++;
 }

 if (pdata->batt_tech >= 0)
  props++;
 if (pdata->temp_aux >= 0)
  props++;
 if (pdata->batt_aux >= 0)
  props++;
 if (pdata->max_voltage >= 0)
  props++;
 if (pdata->min_voltage >= 0)
  props++;

 prop = kcalloc(props, sizeof(*prop), GFP_KERNEL);
 if (!prop) {
  ret = -ENOMEM;
  goto err3;
 }

 prop[i++] = POWER_SUPPLY_PROP_PRESENT;
 if (pdata->charge_gpio >= 0)
  prop[i++] = POWER_SUPPLY_PROP_STATUS;
 if (pdata->batt_tech >= 0)
  prop[i++] = POWER_SUPPLY_PROP_TECHNOLOGY;
 if (pdata->temp_aux >= 0)
  prop[i++] = POWER_SUPPLY_PROP_TEMP;
 if (pdata->batt_aux >= 0)
  prop[i++] = POWER_SUPPLY_PROP_VOLTAGE_NOW;
 if (pdata->max_voltage >= 0)
  prop[i++] = POWER_SUPPLY_PROP_VOLTAGE_MAX;
 if (pdata->min_voltage >= 0)
  prop[i++] = POWER_SUPPLY_PROP_VOLTAGE_MIN;

 INIT_WORK(&bat_work, wm97xx_bat_work);

 if (!pdata->batt_name) {
  dev_info(&dev->dev, "Please consider setting proper battery "
    "name in platform definition file, falling "
    "back to name \"wm97xx-batt\"\n");
  bat_psy_desc.name = "wm97xx-batt";
 } else
  bat_psy_desc.name = pdata->batt_name;

 bat_psy_desc.properties = prop;
 bat_psy_desc.num_properties = props;

 bat_psy = power_supply_register(&dev->dev, &bat_psy_desc, &cfg);
 if (!IS_ERR(bat_psy)) {
  schedule_work(&bat_work);
 } else {
  ret = PTR_ERR(bat_psy);
  goto err4;
 }

 return 0;
err4:
 kfree(prop);
err3:
 if (gpio_is_valid(pdata->charge_gpio))
  free_irq(gpio_to_irq(pdata->charge_gpio), dev);
err2:
 if (gpio_is_valid(pdata->charge_gpio))
  gpio_free(pdata->charge_gpio);
err:
 return ret;
}
