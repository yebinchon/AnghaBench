
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ id; } ;
struct w1_slave {int dev; TYPE_1__ reg_num; void* family_data; } ;
struct power_supply_config {struct max17211_device_info* drv_data; } ;
struct TYPE_4__ {int no_thermal; int get_property; int num_properties; int properties; int type; int name; } ;
struct max17211_device_info {unsigned int rsense; int bat; int * w1_dev; TYPE_2__ bat_desc; int SerialNumber; int * DeviceName; int regmap; int * ManufacturerName; int name; } ;


 int ARRAY_SIZE (int ) ;
 int DEF_DEV_NAME_MAX17211 ;
 int DEF_DEV_NAME_MAX17215 ;
 int DEF_DEV_NAME_UNKNOWN ;
 int DEF_MFG_NAME ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MAX1721X_REG_DEV_NUMB ;
 int MAX1721X_REG_DEV_STR ;
 int MAX1721X_REG_MFG_NUMB ;
 int MAX1721X_REG_MFG_STR ;
 int MAX1721X_REG_NRSENSE ;


 unsigned int MAX172XX_DEV_MASK ;
 int MAX172XX_REG_DEVNAME ;
 int POWER_SUPPLY_TYPE_BATTERY ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,int) ;
 int dev_warn (int *,char*) ;
 struct max17211_device_info* devm_kzalloc (int *,int,int ) ;
 int devm_power_supply_register (int *,TYPE_2__*,struct power_supply_config*) ;
 int devm_regmap_init_w1 (int *,int *) ;
 scalar_t__ get_sn_string (struct max17211_device_info*,int ) ;
 scalar_t__ get_string (struct max17211_device_info*,int ,int,int *) ;
 int max1721x_battery_get_property ;
 int max1721x_battery_props ;
 int max1721x_regmap_w1_config ;
 scalar_t__ regmap_read (int ,int ,unsigned int*) ;
 int snprintf (int ,int,char*,unsigned int) ;
 int strncpy (int *,int ,int) ;

__attribute__((used)) static int devm_w1_max1721x_add_device(struct w1_slave *sl)
{
 struct power_supply_config psy_cfg = {};
 struct max17211_device_info *info;

 info = devm_kzalloc(&sl->dev, sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 sl->family_data = (void *)info;
 info->w1_dev = &sl->dev;







 snprintf(info->name, sizeof(info->name),
  "max1721x-%012X", (unsigned int)sl->reg_num.id);
 info->bat_desc.name = info->name;





 info->bat_desc.no_thermal = 1;
 info->bat_desc.type = POWER_SUPPLY_TYPE_BATTERY;
 info->bat_desc.properties = max1721x_battery_props;
 info->bat_desc.num_properties = ARRAY_SIZE(max1721x_battery_props);
 info->bat_desc.get_property = max1721x_battery_get_property;
 psy_cfg.drv_data = info;


 info->regmap = devm_regmap_init_w1(info->w1_dev,
     &max1721x_regmap_w1_config);
 if (IS_ERR(info->regmap)) {
  int err = PTR_ERR(info->regmap);

  dev_err(info->w1_dev, "Failed to allocate register map: %d\n",
   err);
  return err;
 }


 info->rsense = 0;
 if (regmap_read(info->regmap, MAX1721X_REG_NRSENSE, &info->rsense)) {
  dev_err(info->w1_dev, "Can't read RSense. Hardware error.\n");
  return -ENODEV;
 }

 if (!info->rsense) {
  dev_warn(info->w1_dev, "RSense not calibrated, set 10 mOhms!\n");
  info->rsense = 1000;
 }
 dev_info(info->w1_dev, "RSense: %d mOhms.\n", info->rsense / 100);

 if (get_string(info, MAX1721X_REG_MFG_STR,
   MAX1721X_REG_MFG_NUMB, info->ManufacturerName)) {
  dev_err(info->w1_dev, "Can't read manufacturer. Hardware error.\n");
  return -ENODEV;
 }

 if (!info->ManufacturerName[0])
  strncpy(info->ManufacturerName, DEF_MFG_NAME,
   2 * MAX1721X_REG_MFG_NUMB);

 if (get_string(info, MAX1721X_REG_DEV_STR,
   MAX1721X_REG_DEV_NUMB, info->DeviceName)) {
  dev_err(info->w1_dev, "Can't read device. Hardware error.\n");
  return -ENODEV;
 }
 if (!info->DeviceName[0]) {
  unsigned int dev_name;

  if (regmap_read(info->regmap,
    MAX172XX_REG_DEVNAME, &dev_name)) {
   dev_err(info->w1_dev, "Can't read device name reg.\n");
   return -ENODEV;
  }

  switch (dev_name & MAX172XX_DEV_MASK) {
  case 129:
   strncpy(info->DeviceName, DEF_DEV_NAME_MAX17211,
    2 * MAX1721X_REG_DEV_NUMB);
   break;
  case 128:
   strncpy(info->DeviceName, DEF_DEV_NAME_MAX17215,
    2 * MAX1721X_REG_DEV_NUMB);
   break;
  default:
   strncpy(info->DeviceName, DEF_DEV_NAME_UNKNOWN,
    2 * MAX1721X_REG_DEV_NUMB);
  }
 }

 if (get_sn_string(info, info->SerialNumber)) {
  dev_err(info->w1_dev, "Can't read serial. Hardware error.\n");
  return -ENODEV;
 }

 info->bat = devm_power_supply_register(&sl->dev, &info->bat_desc,
      &psy_cfg);
 if (IS_ERR(info->bat)) {
  dev_err(info->w1_dev, "failed to register battery\n");
  return PTR_ERR(info->bat);
 }

 return 0;
}
