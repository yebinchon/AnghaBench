
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eeepc_laptop {TYPE_1__* platform_device; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 scalar_t__ IS_ERR (struct device*) ;
 int PTR_ERR (struct device*) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,char*,int *,int ) ;
 int hwmon_groups ;
 int pr_err (char*) ;

__attribute__((used)) static int eeepc_hwmon_init(struct eeepc_laptop *eeepc)
{
 struct device *dev = &eeepc->platform_device->dev;
 struct device *hwmon;

 hwmon = devm_hwmon_device_register_with_groups(dev, "eeepc", ((void*)0),
             hwmon_groups);
 if (IS_ERR(hwmon)) {
  pr_err("Could not register eeepc hwmon device\n");
  return PTR_ERR(hwmon);
 }
 return 0;
}
