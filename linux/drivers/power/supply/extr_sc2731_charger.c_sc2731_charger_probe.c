
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int notifier_call; } ;
struct sc2731_charger_info {TYPE_1__ usb_notify; int usb_phy; int psy_usb; int base; int regmap; int work; TYPE_2__* dev; int lock; } ;
struct power_supply_config {struct device_node* of_node; struct sc2731_charger_info* drv_data; } ;
struct TYPE_7__ {int parent; struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_2__*,char*,...) ;
 int dev_get_regmap (int ,int *) ;
 struct sc2731_charger_info* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_power_supply_register (TYPE_2__*,int *,struct power_supply_config*) ;
 int devm_usb_get_phy_by_phandle (TYPE_2__*,char*,int ) ;
 int mutex_init (int *) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 int sc2731_charger_desc ;
 int sc2731_charger_detect_status (struct sc2731_charger_info*) ;
 int sc2731_charger_hw_init (struct sc2731_charger_info*) ;
 int sc2731_charger_usb_change ;
 int sc2731_charger_work ;
 int usb_register_notifier (int ,TYPE_1__*) ;

__attribute__((used)) static int sc2731_charger_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct sc2731_charger_info *info;
 struct power_supply_config charger_cfg = { };
 int ret;

 info = devm_kzalloc(&pdev->dev, sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 mutex_init(&info->lock);
 info->dev = &pdev->dev;
 INIT_WORK(&info->work, sc2731_charger_work);

 info->regmap = dev_get_regmap(pdev->dev.parent, ((void*)0));
 if (!info->regmap) {
  dev_err(&pdev->dev, "failed to get charger regmap\n");
  return -ENODEV;
 }

 ret = of_property_read_u32(np, "reg", &info->base);
 if (ret) {
  dev_err(&pdev->dev, "failed to get register address\n");
  return -ENODEV;
 }

 charger_cfg.drv_data = info;
 charger_cfg.of_node = np;
 info->psy_usb = devm_power_supply_register(&pdev->dev,
         &sc2731_charger_desc,
         &charger_cfg);
 if (IS_ERR(info->psy_usb)) {
  dev_err(&pdev->dev, "failed to register power supply\n");
  return PTR_ERR(info->psy_usb);
 }

 ret = sc2731_charger_hw_init(info);
 if (ret)
  return ret;

 info->usb_phy = devm_usb_get_phy_by_phandle(&pdev->dev, "phys", 0);
 if (IS_ERR(info->usb_phy)) {
  dev_err(&pdev->dev, "failed to find USB phy\n");
  return PTR_ERR(info->usb_phy);
 }

 info->usb_notify.notifier_call = sc2731_charger_usb_change;
 ret = usb_register_notifier(info->usb_phy, &info->usb_notify);
 if (ret) {
  dev_err(&pdev->dev, "failed to register notifier: %d\n", ret);
  return ret;
 }

 sc2731_charger_detect_status(info);

 return 0;
}
