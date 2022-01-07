
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct power_supply_desc {int num_properties; scalar_t__ name; int type; int get_property; int properties; } ;
struct power_supply_config {int num_supplicants; int supplied_to; struct gpio_charger* drv_data; TYPE_1__* of_node; } ;
struct device {TYPE_1__* of_node; struct gpio_charger_platform_data* platform_data; } ;
struct platform_device {scalar_t__ name; struct device dev; } ;
struct gpio_desc {int dummy; } ;
struct gpio_charger_platform_data {int num_supplicants; int supplied_to; int type; scalar_t__ name; int gpio; scalar_t__ gpio_active_low; } ;
struct gpio_charger {int charge_status_irq; struct gpio_desc* charge_status; struct gpio_desc* charger; struct gpio_desc* gpiod; void* irq; struct power_supply_desc charger_desc; } ;
struct TYPE_2__ {scalar_t__ name; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int GPIOD_IN ;
 unsigned long GPIOF_ACTIVE_LOW ;
 unsigned long GPIOF_IN ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int PTR_ERR (struct gpio_desc*) ;
 int dev_err (struct device*,char*,...) ;
 int dev_name (struct device*) ;
 int device_init_wakeup (struct device*,int) ;
 int devm_gpio_request_one (struct device*,int ,unsigned long,int ) ;
 struct gpio_desc* devm_gpiod_get (struct device*,int *,int ) ;
 struct gpio_desc* devm_gpiod_get_optional (struct device*,char*,int ) ;
 struct gpio_charger* devm_kzalloc (struct device*,int,int ) ;
 struct gpio_desc* devm_power_supply_register (struct device*,struct power_supply_desc*,struct power_supply_config*) ;
 void* gpio_charger_get_irq (struct device*,struct gpio_desc*,struct gpio_desc*) ;
 int gpio_charger_get_property ;
 int gpio_charger_get_type (struct device*) ;
 int gpio_charger_properties ;
 int gpio_is_valid (int ) ;
 struct gpio_desc* gpio_to_desc (int ) ;
 int platform_set_drvdata (struct platform_device*,struct gpio_charger*) ;

__attribute__((used)) static int gpio_charger_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 const struct gpio_charger_platform_data *pdata = dev->platform_data;
 struct power_supply_config psy_cfg = {};
 struct gpio_charger *gpio_charger;
 struct power_supply_desc *charger_desc;
 struct gpio_desc *charge_status;
 int charge_status_irq;
 unsigned long flags;
 int ret;

 if (!pdata && !dev->of_node) {
  dev_err(dev, "No platform data\n");
  return -ENOENT;
 }

 gpio_charger = devm_kzalloc(dev, sizeof(*gpio_charger), GFP_KERNEL);
 if (!gpio_charger)
  return -ENOMEM;





 gpio_charger->gpiod = devm_gpiod_get(dev, ((void*)0), GPIOD_IN);





 if (IS_ERR(gpio_charger->gpiod) && !dev->of_node) {

  if (!gpio_is_valid(pdata->gpio)) {
   dev_err(dev, "Invalid gpio pin in pdata\n");
   return -EINVAL;
  }
  flags = GPIOF_IN;
  if (pdata->gpio_active_low)
   flags |= GPIOF_ACTIVE_LOW;
  ret = devm_gpio_request_one(dev, pdata->gpio, flags,
         dev_name(dev));
  if (ret) {
   dev_err(dev, "Failed to request gpio pin: %d\n", ret);
   return ret;
  }

  gpio_charger->gpiod = gpio_to_desc(pdata->gpio);
 } else if (IS_ERR(gpio_charger->gpiod)) {

  if (PTR_ERR(gpio_charger->gpiod) == -EPROBE_DEFER)
   return -EPROBE_DEFER;
  dev_err(dev, "error getting GPIO descriptor\n");
  return PTR_ERR(gpio_charger->gpiod);
 }

 charge_status = devm_gpiod_get_optional(dev, "charge-status", GPIOD_IN);
 gpio_charger->charge_status = charge_status;
 if (IS_ERR(gpio_charger->charge_status))
  return PTR_ERR(gpio_charger->charge_status);

 charger_desc = &gpio_charger->charger_desc;
 charger_desc->properties = gpio_charger_properties;
 charger_desc->num_properties = ARRAY_SIZE(gpio_charger_properties);

 if (!gpio_charger->charge_status)
  charger_desc->num_properties -= 1;
 charger_desc->get_property = gpio_charger_get_property;

 psy_cfg.of_node = dev->of_node;
 psy_cfg.drv_data = gpio_charger;

 if (pdata) {
  charger_desc->name = pdata->name;
  charger_desc->type = pdata->type;
  psy_cfg.supplied_to = pdata->supplied_to;
  psy_cfg.num_supplicants = pdata->num_supplicants;
 } else {
  charger_desc->name = dev->of_node->name;
  charger_desc->type = gpio_charger_get_type(dev);
 }

 if (!charger_desc->name)
  charger_desc->name = pdev->name;

 gpio_charger->charger = devm_power_supply_register(dev, charger_desc,
          &psy_cfg);
 if (IS_ERR(gpio_charger->charger)) {
  ret = PTR_ERR(gpio_charger->charger);
  dev_err(dev, "Failed to register power supply: %d\n", ret);
  return ret;
 }

 gpio_charger->irq = gpio_charger_get_irq(dev, gpio_charger->charger,
       gpio_charger->gpiod);

 charge_status_irq = gpio_charger_get_irq(dev, gpio_charger->charger,
       gpio_charger->charge_status);
 gpio_charger->charge_status_irq = charge_status_irq;

 platform_set_drvdata(pdev, gpio_charger);

 device_init_wakeup(dev, 1);

 return 0;
}
