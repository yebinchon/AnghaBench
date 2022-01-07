
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int notifier_call; } ;
struct watchdog_device {int id; TYPE_1__ reboot_nb; int status; int groups; int parent; } ;
struct device {int dummy; } ;
typedef int dev_t ;


 scalar_t__ IS_ERR (struct device*) ;
 int MAJOR (int ) ;
 int MKDEV (int ,int ) ;
 int PTR_ERR (struct device*) ;
 int WDOG_STOP_ON_REBOOT ;
 struct device* device_create_with_groups (int *,int ,int ,struct watchdog_device*,int ,char*,int ) ;
 int device_destroy (int *,int ) ;
 int devm_register_reboot_notifier (struct device*,TYPE_1__*) ;
 int pr_err (char*,int ,int) ;
 scalar_t__ test_bit (int ,int *) ;
 int watchdog_cdev_register (struct watchdog_device*,int ) ;
 int watchdog_cdev_unregister (struct watchdog_device*) ;
 int watchdog_class ;
 int watchdog_dev_unregister (struct watchdog_device*) ;
 int watchdog_devt ;
 int watchdog_reboot_notifier ;
 int watchdog_register_pretimeout (struct watchdog_device*) ;

int watchdog_dev_register(struct watchdog_device *wdd)
{
 struct device *dev;
 dev_t devno;
 int ret;

 devno = MKDEV(MAJOR(watchdog_devt), wdd->id);

 ret = watchdog_cdev_register(wdd, devno);
 if (ret)
  return ret;

 dev = device_create_with_groups(&watchdog_class, wdd->parent,
     devno, wdd, wdd->groups,
     "watchdog%d", wdd->id);
 if (IS_ERR(dev)) {
  watchdog_cdev_unregister(wdd);
  return PTR_ERR(dev);
 }

 ret = watchdog_register_pretimeout(wdd);
 if (ret) {
  device_destroy(&watchdog_class, devno);
  watchdog_cdev_unregister(wdd);
  return ret;
 }

 if (test_bit(WDOG_STOP_ON_REBOOT, &wdd->status)) {
  wdd->reboot_nb.notifier_call = watchdog_reboot_notifier;

  ret = devm_register_reboot_notifier(dev, &wdd->reboot_nb);
  if (ret) {
   pr_err("watchdog%d: Cannot register reboot notifier (%d)\n",
          wdd->id, ret);
   watchdog_dev_unregister(wdd);
  }
 }

 return ret;
}
