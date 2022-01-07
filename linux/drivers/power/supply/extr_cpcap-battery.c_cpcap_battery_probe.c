
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct power_supply_desc {char* name; int get_property; int num_properties; int properties; int type; } ;
struct power_supply_config {struct cpcap_battery_ddata* drv_data; int of_node; } ;
struct TYPE_7__ {int of_node; int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {int data; } ;
struct TYPE_8__ {int ccm; } ;
struct cpcap_battery_ddata {int active; TYPE_1__* dev; int psy; TYPE_2__ config; int reg; int vendor; int irq_list; } ;


 int ARRAY_SIZE (int ) ;
 int CPCAP_REG_CCM ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int POWER_SUPPLY_TYPE_BATTERY ;
 int PTR_ERR_OR_ZERO (int ) ;
 int atomic_set (int *,int) ;
 int cpcap_battery_get_property ;
 int cpcap_battery_id_table ;
 int cpcap_battery_init_iio (struct cpcap_battery_ddata*) ;
 int cpcap_battery_init_interrupts (struct platform_device*,struct cpcap_battery_ddata*) ;
 int cpcap_battery_props ;
 int cpcap_get_vendor (TYPE_1__*,int ,int *) ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_get_regmap (int ,int *) ;
 void* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_power_supply_register (TYPE_1__*,struct power_supply_desc*,struct power_supply_config*) ;
 int memcpy (TYPE_2__*,int ,int) ;
 struct of_device_id* of_match_device (int ,TYPE_1__*) ;
 int of_match_ptr (int ) ;
 int platform_set_drvdata (struct platform_device*,struct cpcap_battery_ddata*) ;
 int regmap_update_bits (int ,int ,int,int ) ;

__attribute__((used)) static int cpcap_battery_probe(struct platform_device *pdev)
{
 struct power_supply_desc *psy_desc;
 struct cpcap_battery_ddata *ddata;
 const struct of_device_id *match;
 struct power_supply_config psy_cfg = {};
 int error;

 match = of_match_device(of_match_ptr(cpcap_battery_id_table),
    &pdev->dev);
 if (!match)
  return -EINVAL;

 if (!match->data) {
  dev_err(&pdev->dev, "no configuration data found\n");

  return -ENODEV;
 }

 ddata = devm_kzalloc(&pdev->dev, sizeof(*ddata), GFP_KERNEL);
 if (!ddata)
  return -ENOMEM;

 INIT_LIST_HEAD(&ddata->irq_list);
 ddata->dev = &pdev->dev;
 memcpy(&ddata->config, match->data, sizeof(ddata->config));

 ddata->reg = dev_get_regmap(ddata->dev->parent, ((void*)0));
 if (!ddata->reg)
  return -ENODEV;

 error = cpcap_get_vendor(ddata->dev, ddata->reg, &ddata->vendor);
 if (error)
  return error;

 platform_set_drvdata(pdev, ddata);

 error = regmap_update_bits(ddata->reg, CPCAP_REG_CCM,
       0xffff, ddata->config.ccm);
 if (error)
  return error;

 error = cpcap_battery_init_interrupts(pdev, ddata);
 if (error)
  return error;

 error = cpcap_battery_init_iio(ddata);
 if (error)
  return error;

 psy_desc = devm_kzalloc(ddata->dev, sizeof(*psy_desc), GFP_KERNEL);
 if (!psy_desc)
  return -ENOMEM;

 psy_desc->name = "battery",
 psy_desc->type = POWER_SUPPLY_TYPE_BATTERY,
 psy_desc->properties = cpcap_battery_props,
 psy_desc->num_properties = ARRAY_SIZE(cpcap_battery_props),
 psy_desc->get_property = cpcap_battery_get_property,

 psy_cfg.of_node = pdev->dev.of_node;
 psy_cfg.drv_data = ddata;

 ddata->psy = devm_power_supply_register(ddata->dev, psy_desc,
      &psy_cfg);
 error = PTR_ERR_OR_ZERO(ddata->psy);
 if (error) {
  dev_err(ddata->dev, "failed to register power supply\n");
  return error;
 }

 atomic_set(&ddata->active, 1);

 return 0;
}
