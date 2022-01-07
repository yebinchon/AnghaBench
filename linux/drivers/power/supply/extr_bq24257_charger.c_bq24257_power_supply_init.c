
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply_config {int num_supplicants; int supplied_to; int attr_grp; struct bq24257_device* drv_data; } ;
struct bq24257_device {int charger; int dev; } ;


 int ARRAY_SIZE (int ) ;
 int PTR_ERR_OR_ZERO (int ) ;
 int bq24257_charger_supplied_to ;
 int bq24257_charger_sysfs_groups ;
 int bq24257_power_supply_desc ;
 int devm_power_supply_register (int ,int *,struct power_supply_config*) ;

__attribute__((used)) static int bq24257_power_supply_init(struct bq24257_device *bq)
{
 struct power_supply_config psy_cfg = { .drv_data = bq, };

 psy_cfg.attr_grp = bq24257_charger_sysfs_groups;
 psy_cfg.supplied_to = bq24257_charger_supplied_to;
 psy_cfg.num_supplicants = ARRAY_SIZE(bq24257_charger_supplied_to);

 bq->charger = devm_power_supply_register(bq->dev,
       &bq24257_power_supply_desc,
       &psy_cfg);

 return PTR_ERR_OR_ZERO(bq->charger);
}
