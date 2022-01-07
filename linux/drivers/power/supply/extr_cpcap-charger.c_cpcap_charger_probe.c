
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct power_supply_config {struct cpcap_charger_ddata* drv_data; int of_node; } ;
struct TYPE_8__ {int of_node; int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_device_id {int dummy; } ;
struct TYPE_7__ {int set_vbus; } ;
struct cpcap_charger_ddata {int detect_work; TYPE_2__* dev; TYPE_1__ comparator; int usb; int active; int vbus_work; int irq_list; int reg; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int atomic_set (int *,int) ;
 int cpcap_charger_id_table ;
 int cpcap_charger_init_iio (struct cpcap_charger_ddata*) ;
 int cpcap_charger_init_optional_gpios (struct cpcap_charger_ddata*) ;
 int cpcap_charger_set_vbus ;
 int cpcap_charger_usb_desc ;
 int cpcap_charger_vbus_work ;
 int cpcap_usb_detect ;
 int cpcap_usb_init_interrupts (struct platform_device*,struct cpcap_charger_ddata*) ;
 int dev_err (TYPE_2__*,char*,int) ;
 int dev_get_regmap (int ,int *) ;
 int dev_info (TYPE_2__*,char*) ;
 struct cpcap_charger_ddata* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_power_supply_register (TYPE_2__*,int *,struct power_supply_config*) ;
 struct of_device_id* of_match_device (int ,TYPE_2__*) ;
 int of_match_ptr (int ) ;
 int omap_usb2_set_comparator (TYPE_1__*) ;
 int platform_set_drvdata (struct platform_device*,struct cpcap_charger_ddata*) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static int cpcap_charger_probe(struct platform_device *pdev)
{
 struct cpcap_charger_ddata *ddata;
 const struct of_device_id *of_id;
 struct power_supply_config psy_cfg = {};
 int error;

 of_id = of_match_device(of_match_ptr(cpcap_charger_id_table),
    &pdev->dev);
 if (!of_id)
  return -EINVAL;

 ddata = devm_kzalloc(&pdev->dev, sizeof(*ddata), GFP_KERNEL);
 if (!ddata)
  return -ENOMEM;

 ddata->dev = &pdev->dev;

 ddata->reg = dev_get_regmap(ddata->dev->parent, ((void*)0));
 if (!ddata->reg)
  return -ENODEV;

 INIT_LIST_HEAD(&ddata->irq_list);
 INIT_DELAYED_WORK(&ddata->detect_work, cpcap_usb_detect);
 INIT_DELAYED_WORK(&ddata->vbus_work, cpcap_charger_vbus_work);
 platform_set_drvdata(pdev, ddata);

 error = cpcap_charger_init_iio(ddata);
 if (error)
  return error;

 atomic_set(&ddata->active, 1);

 psy_cfg.of_node = pdev->dev.of_node;
 psy_cfg.drv_data = ddata;

 ddata->usb = devm_power_supply_register(ddata->dev,
      &cpcap_charger_usb_desc,
      &psy_cfg);
 if (IS_ERR(ddata->usb)) {
  error = PTR_ERR(ddata->usb);
  dev_err(ddata->dev, "failed to register USB charger: %i\n",
   error);

  return error;
 }

 error = cpcap_usb_init_interrupts(pdev, ddata);
 if (error)
  return error;

 ddata->comparator.set_vbus = cpcap_charger_set_vbus;
 error = omap_usb2_set_comparator(&ddata->comparator);
 if (error == -ENODEV) {
  dev_info(ddata->dev, "charger needs phy, deferring probe\n");
  return -EPROBE_DEFER;
 }

 cpcap_charger_init_optional_gpios(ddata);

 schedule_delayed_work(&ddata->detect_work, 0);

 return 0;
}
