
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct asus_wmi {TYPE_1__* platform_device; } ;
struct TYPE_2__ {struct device dev; } ;


 scalar_t__ IS_ERR (struct device*) ;
 int PTR_ERR (struct device*) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,char*,struct asus_wmi*,int ) ;
 int hwmon_attribute_groups ;
 int pr_err (char*) ;

__attribute__((used)) static int asus_wmi_hwmon_init(struct asus_wmi *asus)
{
 struct device *dev = &asus->platform_device->dev;
 struct device *hwmon;

 hwmon = devm_hwmon_device_register_with_groups(dev, "asus", asus,
   hwmon_attribute_groups);

 if (IS_ERR(hwmon)) {
  pr_err("Could not register asus hwmon device\n");
  return PTR_ERR(hwmon);
 }
 return 0;
}
