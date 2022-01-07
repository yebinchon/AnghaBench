
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_watchdog_unregister_device ;
 int devres_add (struct device*,struct watchdog_device**) ;
 struct watchdog_device** devres_alloc (int ,int,int ) ;
 int devres_free (struct watchdog_device**) ;
 int watchdog_register_device (struct watchdog_device*) ;

int devm_watchdog_register_device(struct device *dev,
    struct watchdog_device *wdd)
{
 struct watchdog_device **rcwdd;
 int ret;

 rcwdd = devres_alloc(devm_watchdog_unregister_device, sizeof(*rcwdd),
        GFP_KERNEL);
 if (!rcwdd)
  return -ENOMEM;

 ret = watchdog_register_device(wdd);
 if (!ret) {
  *rcwdd = wdd;
  devres_add(dev, rcwdd);
 } else {
  devres_free(rcwdd);
 }

 return ret;
}
