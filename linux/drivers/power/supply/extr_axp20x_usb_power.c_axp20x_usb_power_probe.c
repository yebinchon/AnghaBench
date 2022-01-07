
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct power_supply_desc {int dummy; } ;
struct power_supply_config {struct axp20x_usb_power* drv_data; int of_node; } ;
struct TYPE_7__ {int of_node; int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct axp20x_usb_power {int axp20x_id; int vbus_detect; int supply; int regmap; int np; } ;
struct axp20x_dev {int regmap_irqc; int variant; int regmap; } ;
typedef enum axp20x_variants { ____Placeholder_axp20x_variants } axp20x_variants ;


 scalar_t__ AXP202_ID ;
 int AXP20X_VBUS_MON ;
 int AXP20X_VBUS_MON_VBUS_VALID ;
 scalar_t__ AXP221_ID ;
 scalar_t__ AXP223_ID ;
 scalar_t__ AXP813_ID ;
 int CONFIG_AXP20X_ADC ;
 int DRVNAME ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 struct power_supply_desc axp20x_usb_power_desc ;
 int axp20x_usb_power_irq ;
 int axp20x_usb_power_poll_vbus ;
 scalar_t__ axp20x_usb_vbus_needs_polling (struct axp20x_usb_power*) ;
 struct power_supply_desc axp22x_usb_power_desc ;
 int configure_adc_registers (struct axp20x_usb_power*) ;
 int configure_iio_channels (struct platform_device*,struct axp20x_usb_power*) ;
 int dev_err (TYPE_1__*,char*,...) ;
 struct axp20x_dev* dev_get_drvdata (int ) ;
 int dev_warn (TYPE_1__*,char*,char const* const,int) ;
 struct axp20x_usb_power* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_power_supply_register (TYPE_1__*,struct power_supply_desc const*,struct power_supply_config*) ;
 int devm_request_any_context_irq (TYPE_1__*,int,int ,int ,int ,struct axp20x_usb_power*) ;
 scalar_t__ of_device_get_match_data (TYPE_1__*) ;
 int of_device_is_available (int ) ;
 int platform_get_irq_byname (struct platform_device*,char const* const) ;
 int platform_set_drvdata (struct platform_device*,struct axp20x_usb_power*) ;
 int queue_delayed_work (int ,int *,int ) ;
 int regmap_irq_get_virq (int ,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int system_wq ;

__attribute__((used)) static int axp20x_usb_power_probe(struct platform_device *pdev)
{
 struct axp20x_dev *axp20x = dev_get_drvdata(pdev->dev.parent);
 struct power_supply_config psy_cfg = {};
 struct axp20x_usb_power *power;
 static const char * const axp20x_irq_names[] = { "VBUS_PLUGIN",
  "VBUS_REMOVAL", "VBUS_VALID", "VBUS_NOT_VALID", ((void*)0) };
 static const char * const axp22x_irq_names[] = {
  "VBUS_PLUGIN", "VBUS_REMOVAL", ((void*)0) };
 const char * const *irq_names;
 const struct power_supply_desc *usb_power_desc;
 int i, irq, ret;

 if (!of_device_is_available(pdev->dev.of_node))
  return -ENODEV;

 if (!axp20x) {
  dev_err(&pdev->dev, "Parent drvdata not set\n");
  return -EINVAL;
 }

 power = devm_kzalloc(&pdev->dev, sizeof(*power), GFP_KERNEL);
 if (!power)
  return -ENOMEM;

 platform_set_drvdata(pdev, power);
 power->axp20x_id = (enum axp20x_variants)of_device_get_match_data(
        &pdev->dev);

 power->np = pdev->dev.of_node;
 power->regmap = axp20x->regmap;

 if (power->axp20x_id == AXP202_ID) {

  ret = regmap_update_bits(power->regmap, AXP20X_VBUS_MON,
      AXP20X_VBUS_MON_VBUS_VALID,
      AXP20X_VBUS_MON_VBUS_VALID);
  if (ret)
   return ret;

  if (IS_ENABLED(CONFIG_AXP20X_ADC))
   ret = configure_iio_channels(pdev, power);
  else
   ret = configure_adc_registers(power);

  if (ret)
   return ret;

  usb_power_desc = &axp20x_usb_power_desc;
  irq_names = axp20x_irq_names;
 } else if (power->axp20x_id == AXP221_ID ||
     power->axp20x_id == AXP223_ID ||
     power->axp20x_id == AXP813_ID) {
  usb_power_desc = &axp22x_usb_power_desc;
  irq_names = axp22x_irq_names;
 } else {
  dev_err(&pdev->dev, "Unsupported AXP variant: %ld\n",
   axp20x->variant);
  return -EINVAL;
 }

 psy_cfg.of_node = pdev->dev.of_node;
 psy_cfg.drv_data = power;

 power->supply = devm_power_supply_register(&pdev->dev, usb_power_desc,
         &psy_cfg);
 if (IS_ERR(power->supply))
  return PTR_ERR(power->supply);


 for (i = 0; irq_names[i]; i++) {
  irq = platform_get_irq_byname(pdev, irq_names[i]);
  if (irq < 0) {
   dev_warn(&pdev->dev, "No IRQ for %s: %d\n",
     irq_names[i], irq);
   continue;
  }
  irq = regmap_irq_get_virq(axp20x->regmap_irqc, irq);
  ret = devm_request_any_context_irq(&pdev->dev, irq,
    axp20x_usb_power_irq, 0, DRVNAME, power);
  if (ret < 0)
   dev_warn(&pdev->dev, "Error requesting %s IRQ: %d\n",
     irq_names[i], ret);
 }

 INIT_DELAYED_WORK(&power->vbus_detect, axp20x_usb_power_poll_vbus);
 if (axp20x_usb_vbus_needs_polling(power))
  queue_delayed_work(system_wq, &power->vbus_detect, 0);

 return 0;
}
