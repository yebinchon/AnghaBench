
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply_hwmon {int props; struct power_supply* psy; } ;
struct power_supply_desc {int num_properties; int* properties; char* name; } ;
struct device {int dummy; } ;
struct power_supply {struct power_supply_desc* desc; struct device dev; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ POWER_SUPPLY_PROP_TIME_TO_FULL_AVG ;




 int PTR_ERR_OR_ZERO (struct device*) ;
 int bitmap_zalloc (scalar_t__,int ) ;
 int devm_add_action (struct device*,int ,int ) ;
 struct device* devm_hwmon_device_register_with_info (struct device*,char const*,struct power_supply_hwmon*,int *,int *) ;
 char* devm_kstrdup (struct device*,char const*,int ) ;
 struct power_supply_hwmon* devm_kzalloc (struct device*,int,int ) ;
 int devres_close_group (struct device*,int (*) (struct power_supply*)) ;
 int devres_open_group (struct device*,int (*) (struct power_supply*),int ) ;
 int devres_release_group (struct device*,int *) ;
 int power_supply_hwmon_bitmap_free ;
 int power_supply_hwmon_chip_info ;
 int set_bit (int const,int ) ;
 scalar_t__ strchr (char const*,char) ;
 int strreplace (char*,char,char) ;

int power_supply_add_hwmon_sysfs(struct power_supply *psy)
{
 const struct power_supply_desc *desc = psy->desc;
 struct power_supply_hwmon *psyhw;
 struct device *dev = &psy->dev;
 struct device *hwmon;
 int ret, i;
 const char *name;

 if (!devres_open_group(dev, power_supply_add_hwmon_sysfs,
          GFP_KERNEL))
  return -ENOMEM;

 psyhw = devm_kzalloc(dev, sizeof(*psyhw), GFP_KERNEL);
 if (!psyhw) {
  ret = -ENOMEM;
  goto error;
 }

 psyhw->psy = psy;
 psyhw->props = bitmap_zalloc(POWER_SUPPLY_PROP_TIME_TO_FULL_AVG + 1,
         GFP_KERNEL);
 if (!psyhw->props) {
  ret = -ENOMEM;
  goto error;
 }

 ret = devm_add_action(dev, power_supply_hwmon_bitmap_free,
         psyhw->props);
 if (ret)
  goto error;

 for (i = 0; i < desc->num_properties; i++) {
  const enum power_supply_property prop = desc->properties[i];

  switch (prop) {
  case 142:
  case 141:
  case 140:
  case 139:
  case 133:
  case 132:
  case 137:
  case 138:
  case 136:
  case 134:
  case 135:
  case 131:
  case 129:
  case 130:
  case 128:
   set_bit(prop, psyhw->props);
   break;
  default:
   break;
  }
 }

 name = psy->desc->name;
 if (strchr(name, '-')) {
  char *new_name;

  new_name = devm_kstrdup(dev, name, GFP_KERNEL);
  if (!new_name) {
   ret = -ENOMEM;
   goto error;
  }
  strreplace(new_name, '-', '_');
  name = new_name;
 }
 hwmon = devm_hwmon_device_register_with_info(dev, name,
      psyhw,
      &power_supply_hwmon_chip_info,
      ((void*)0));
 ret = PTR_ERR_OR_ZERO(hwmon);
 if (ret)
  goto error;

 devres_close_group(dev, power_supply_add_hwmon_sysfs);
 return 0;
error:
 devres_release_group(dev, ((void*)0));
 return ret;
}
