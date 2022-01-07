
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int kobj; } ;
struct w1_slave {TYPE_2__ dev; TYPE_1__* family; struct device* hwmon; } ;
struct w1_family_ops {int (* add_slave ) (struct w1_slave*) ;int groups; int (* remove_slave ) (struct w1_slave*) ;int chip_info; } ;
struct device {int dummy; } ;
struct TYPE_5__ {struct w1_family_ops* fops; } ;




 int CONFIG_HWMON ;
 int IS_ERR (struct device*) ;
 int IS_REACHABLE (int ) ;
 int dev_err (TYPE_2__*,char*,int) ;
 int dev_warn (TYPE_2__*,char*) ;
 struct device* hwmon_device_register_with_info (TYPE_2__*,char*,struct w1_slave*,int ,int *) ;
 int hwmon_device_unregister (struct device*) ;
 int stub1 (struct w1_slave*) ;
 int stub2 (struct w1_slave*) ;
 int sysfs_create_groups (int *,int ) ;
 int sysfs_remove_groups (int *,int ) ;

__attribute__((used)) static int w1_family_notify(unsigned long action, struct w1_slave *sl)
{
 struct w1_family_ops *fops;
 int err;

 fops = sl->family->fops;

 if (!fops)
  return 0;

 switch (action) {
 case 129:

  if (fops->add_slave) {
   err = fops->add_slave(sl);
   if (err < 0) {
    dev_err(&sl->dev,
     "add_slave() call failed. err=%d\n",
     err);
    return err;
   }
  }
  if (fops->groups) {
   err = sysfs_create_groups(&sl->dev.kobj, fops->groups);
   if (err) {
    dev_err(&sl->dev,
     "sysfs group creation failed. err=%d\n",
     err);
    return err;
   }
  }
  if (IS_REACHABLE(CONFIG_HWMON) && fops->chip_info) {
   struct device *hwmon
    = hwmon_device_register_with_info(&sl->dev,
      "w1_slave_temp", sl,
      fops->chip_info,
      ((void*)0));
   if (IS_ERR(hwmon)) {
    dev_warn(&sl->dev,
      "could not create hwmon device\n");
   } else {
    sl->hwmon = hwmon;
   }
  }
  break;
 case 128:
  if (IS_REACHABLE(CONFIG_HWMON) && fops->chip_info &&
       sl->hwmon)
   hwmon_device_unregister(sl->hwmon);
  if (fops->remove_slave)
   sl->family->fops->remove_slave(sl);
  if (fops->groups)
   sysfs_remove_groups(&sl->dev.kobj, fops->groups);
  break;
 }
 return 0;
}
