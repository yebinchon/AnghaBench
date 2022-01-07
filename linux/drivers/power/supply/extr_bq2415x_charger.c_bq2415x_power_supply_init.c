
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct power_supply_config {int attr_grp; int of_node; struct bq2415x_device* drv_data; } ;
struct TYPE_5__ {int get_property; int num_properties; int properties; int type; int name; } ;
struct bq2415x_device {int charger; int model; TYPE_2__ charger_desc; TYPE_1__* dev; int name; } ;
struct TYPE_4__ {int of_node; } ;


 int ARRAY_SIZE (int ) ;
 int BQUNKNOWN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int POWER_SUPPLY_TYPE_USB ;
 int PTR_ERR (int ) ;
 int * bq2415x_chip_name ;
 int bq2415x_detect_chip (struct bq2415x_device*) ;
 int bq2415x_detect_revision (struct bq2415x_device*) ;
 int bq2415x_get_vender_code (struct bq2415x_device*) ;
 int bq2415x_power_supply_get_property ;
 int bq2415x_power_supply_props ;
 int bq2415x_sysfs_groups ;
 int dev_err (TYPE_1__*,char*) ;
 int kasprintf (int ,char*,int ,char*,int ) ;
 int kfree (int ) ;
 int power_supply_register (TYPE_1__*,TYPE_2__*,struct power_supply_config*) ;
 int sprintf (char*,char*,int) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int bq2415x_power_supply_init(struct bq2415x_device *bq)
{
 int ret;
 int chip;
 char revstr[8];
 struct power_supply_config psy_cfg = {
  .drv_data = bq,
  .of_node = bq->dev->of_node,
  .attr_grp = bq2415x_sysfs_groups,
 };

 bq->charger_desc.name = bq->name;
 bq->charger_desc.type = POWER_SUPPLY_TYPE_USB;
 bq->charger_desc.properties = bq2415x_power_supply_props;
 bq->charger_desc.num_properties =
   ARRAY_SIZE(bq2415x_power_supply_props);
 bq->charger_desc.get_property = bq2415x_power_supply_get_property;

 ret = bq2415x_detect_chip(bq);
 if (ret < 0)
  chip = BQUNKNOWN;
 else
  chip = ret;

 ret = bq2415x_detect_revision(bq);
 if (ret < 0)
  strcpy(revstr, "unknown");
 else
  sprintf(revstr, "1.%d", ret);

 bq->model = kasprintf(GFP_KERNEL,
    "chip %s, revision %s, vender code %.3d",
    bq2415x_chip_name[chip], revstr,
    bq2415x_get_vender_code(bq));
 if (!bq->model) {
  dev_err(bq->dev, "failed to allocate model name\n");
  return -ENOMEM;
 }

 bq->charger = power_supply_register(bq->dev, &bq->charger_desc,
         &psy_cfg);
 if (IS_ERR(bq->charger)) {
  kfree(bq->model);
  return PTR_ERR(bq->charger);
 }

 return 0;
}
