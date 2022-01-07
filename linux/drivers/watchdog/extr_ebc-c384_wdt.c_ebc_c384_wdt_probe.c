
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int min_timeout; int max_timeout; int timeout; int * ops; int * info; } ;
struct device {int dummy; } ;


 scalar_t__ ADDR_EXTENT ;
 scalar_t__ BASE_ADDR ;
 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int WATCHDOG_MAX_TIMEOUT ;
 int WATCHDOG_TIMEOUT ;
 int dev_err (struct device*,char*,scalar_t__,scalar_t__) ;
 int dev_name (struct device*) ;
 struct watchdog_device* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_region (struct device*,scalar_t__,scalar_t__,int ) ;
 int devm_watchdog_register_device (struct device*,struct watchdog_device*) ;
 int ebc_c384_wdt_info ;
 int ebc_c384_wdt_ops ;
 int nowayout ;
 int timeout ;
 int watchdog_init_timeout (struct watchdog_device*,int ,struct device*) ;
 int watchdog_set_nowayout (struct watchdog_device*,int ) ;

__attribute__((used)) static int ebc_c384_wdt_probe(struct device *dev, unsigned int id)
{
 struct watchdog_device *wdd;

 if (!devm_request_region(dev, BASE_ADDR, ADDR_EXTENT, dev_name(dev))) {
  dev_err(dev, "Unable to lock port addresses (0x%X-0x%X)\n",
   BASE_ADDR, BASE_ADDR + ADDR_EXTENT);
  return -EBUSY;
 }

 wdd = devm_kzalloc(dev, sizeof(*wdd), GFP_KERNEL);
 if (!wdd)
  return -ENOMEM;

 wdd->info = &ebc_c384_wdt_info;
 wdd->ops = &ebc_c384_wdt_ops;
 wdd->timeout = WATCHDOG_TIMEOUT;
 wdd->min_timeout = 1;
 wdd->max_timeout = WATCHDOG_MAX_TIMEOUT;

 watchdog_set_nowayout(wdd, nowayout);
 watchdog_init_timeout(wdd, timeout, dev);

 return devm_watchdog_register_device(dev, wdd);
}
