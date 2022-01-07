
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply_config {int num_supplicants; int supplied_to; int attr_grp; } ;
struct platform_device {int dev; } ;
struct lp8788_charger {void* charger; void* battery; } ;


 int ARRAY_SIZE (int ) ;
 int EPERM ;
 scalar_t__ IS_ERR (void*) ;
 int battery_supplied_to ;
 int lp8788_charger_sysfs_groups ;
 int lp8788_psy_battery_desc ;
 int lp8788_psy_charger_desc ;
 void* power_supply_register (int *,int *,struct power_supply_config*) ;
 int power_supply_unregister (void*) ;

__attribute__((used)) static int lp8788_psy_register(struct platform_device *pdev,
    struct lp8788_charger *pchg)
{
 struct power_supply_config charger_cfg = {};

 charger_cfg.attr_grp = lp8788_charger_sysfs_groups;
 charger_cfg.supplied_to = battery_supplied_to;
 charger_cfg.num_supplicants = ARRAY_SIZE(battery_supplied_to);

 pchg->charger = power_supply_register(&pdev->dev,
           &lp8788_psy_charger_desc,
           &charger_cfg);
 if (IS_ERR(pchg->charger))
  return -EPERM;

 pchg->battery = power_supply_register(&pdev->dev,
           &lp8788_psy_battery_desc, ((void*)0));
 if (IS_ERR(pchg->battery)) {
  power_supply_unregister(pchg->charger);
  return -EPERM;
 }

 return 0;
}
