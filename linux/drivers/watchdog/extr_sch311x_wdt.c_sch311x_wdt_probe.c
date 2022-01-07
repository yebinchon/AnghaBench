
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_5__ {int runtime_reg; int boot_status; int io_lock; } ;
struct TYPE_4__ {struct device* parent; } ;


 int DRV_NAME ;
 int EBUSY ;
 int GP60 ;
 int WATCHDOG_MINOR ;
 int WATCHDOG_TIMEOUT ;
 int WDT_CFG ;
 int WDT_CTRL ;
 int WDT_TIME_OUT ;
 int dev_err (struct device*,char*,int,int) ;
 int dev_info (struct device*,char*,int ,...) ;
 int misc_register (TYPE_1__*) ;
 int nowayout ;
 int outb (int ,int) ;
 int release_region (int,int) ;
 int request_region (int,int,int ) ;
 TYPE_2__ sch311x_wdt_data ;
 int sch311x_wdt_get_status (int *) ;
 TYPE_1__ sch311x_wdt_miscdev ;
 scalar_t__ sch311x_wdt_set_heartbeat (int ) ;
 int sch311x_wdt_stop () ;
 int spin_lock_init (int *) ;
 int timeout ;

__attribute__((used)) static int sch311x_wdt_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 int err;

 spin_lock_init(&sch311x_wdt_data.io_lock);

 if (!request_region(sch311x_wdt_data.runtime_reg + GP60, 1, DRV_NAME)) {
  dev_err(dev, "Failed to request region 0x%04x-0x%04x.\n",
   sch311x_wdt_data.runtime_reg + GP60,
   sch311x_wdt_data.runtime_reg + GP60);
  err = -EBUSY;
  goto exit;
 }

 if (!request_region(sch311x_wdt_data.runtime_reg + WDT_TIME_OUT, 4,
        DRV_NAME)) {
  dev_err(dev, "Failed to request region 0x%04x-0x%04x.\n",
   sch311x_wdt_data.runtime_reg + WDT_TIME_OUT,
   sch311x_wdt_data.runtime_reg + WDT_CTRL);
  err = -EBUSY;
  goto exit_release_region;
 }


 sch311x_wdt_stop();
 outb(0, sch311x_wdt_data.runtime_reg + WDT_CFG);



 if (sch311x_wdt_set_heartbeat(timeout)) {
  sch311x_wdt_set_heartbeat(WATCHDOG_TIMEOUT);
  dev_info(dev, "timeout value must be 1<=x<=15300, using %d\n",
   timeout);
 }


 sch311x_wdt_get_status(&sch311x_wdt_data.boot_status);

 sch311x_wdt_miscdev.parent = dev;

 err = misc_register(&sch311x_wdt_miscdev);
 if (err != 0) {
  dev_err(dev, "cannot register miscdev on minor=%d (err=%d)\n",
       WATCHDOG_MINOR, err);
  goto exit_release_region2;
 }

 dev_info(dev,
  "SMSC SCH311x WDT initialized. timeout=%d sec (nowayout=%d)\n",
  timeout, nowayout);

 return 0;

exit_release_region2:
 release_region(sch311x_wdt_data.runtime_reg + WDT_TIME_OUT, 4);
exit_release_region:
 release_region(sch311x_wdt_data.runtime_reg + GP60, 1);
 sch311x_wdt_data.runtime_reg = 0;
exit:
 return err;
}
