
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct power_supply_desc {char* name; int get_property; int num_properties; int properties; int type; } ;
struct power_supply_config {int of_node; struct ingenic_battery* drv_data; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {scalar_t__ voltage_min_design_uv; scalar_t__ voltage_max_design_uv; } ;
struct ingenic_battery {TYPE_1__ info; int battery; struct power_supply_desc desc; int channel; struct device* dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int POWER_SUPPLY_TYPE_BATTERY ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,...) ;
 int devm_iio_channel_get (struct device*,char*) ;
 struct ingenic_battery* devm_kzalloc (struct device*,int,int ) ;
 int devm_power_supply_register (struct device*,struct power_supply_desc*,struct power_supply_config*) ;
 int ingenic_battery_get_property ;
 int ingenic_battery_properties ;
 int ingenic_battery_set_scale (struct ingenic_battery*) ;
 int power_supply_get_battery_info (int ,TYPE_1__*) ;

__attribute__((used)) static int ingenic_battery_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct ingenic_battery *bat;
 struct power_supply_config psy_cfg = {};
 struct power_supply_desc *desc;
 int ret;

 bat = devm_kzalloc(dev, sizeof(*bat), GFP_KERNEL);
 if (!bat)
  return -ENOMEM;

 bat->dev = dev;
 bat->channel = devm_iio_channel_get(dev, "battery");
 if (IS_ERR(bat->channel))
  return PTR_ERR(bat->channel);

 desc = &bat->desc;
 desc->name = "jz-battery";
 desc->type = POWER_SUPPLY_TYPE_BATTERY;
 desc->properties = ingenic_battery_properties;
 desc->num_properties = ARRAY_SIZE(ingenic_battery_properties);
 desc->get_property = ingenic_battery_get_property;
 psy_cfg.drv_data = bat;
 psy_cfg.of_node = dev->of_node;

 bat->battery = devm_power_supply_register(dev, desc, &psy_cfg);
 if (IS_ERR(bat->battery)) {
  dev_err(dev, "Unable to register battery\n");
  return PTR_ERR(bat->battery);
 }

 ret = power_supply_get_battery_info(bat->battery, &bat->info);
 if (ret) {
  dev_err(dev, "Unable to get battery info: %d\n", ret);
  return ret;
 }
 if (bat->info.voltage_min_design_uv < 0) {
  dev_err(dev, "Unable to get voltage min design\n");
  return bat->info.voltage_min_design_uv;
 }
 if (bat->info.voltage_max_design_uv < 0) {
  dev_err(dev, "Unable to get voltage max design\n");
  return bat->info.voltage_max_design_uv;
 }

 return ingenic_battery_set_scale(bat);
}
