
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct resource {scalar_t__ start; } ;
struct platform_device {int dev; int name; } ;
struct TYPE_6__ {scalar_t__ sch_wdtba; int unlock_sequence; } ;
struct TYPE_5__ {int * parent; int timeout; } ;


 int EBUSY ;
 int ENODEV ;
 int IORESOURCE_IO ;
 scalar_t__ WDTLR ;
 int WDT_LOCK ;
 int dev_dbg (int *,char*,scalar_t__) ;
 int dev_err (int *,char*,int ) ;
 int dev_warn (int *,char*,int) ;
 TYPE_4__ ie6xx_wdt_data ;
 int ie6xx_wdt_debugfs_exit () ;
 int ie6xx_wdt_debugfs_init () ;
 TYPE_1__ ie6xx_wdt_dev ;
 int inb (scalar_t__) ;
 int nowayout ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int release_region (scalar_t__,int ) ;
 int request_region (scalar_t__,int ,int ) ;
 int resource_size (struct resource*) ;
 int spin_lock_init (int *) ;
 int timeout ;
 int watchdog_register_device (TYPE_1__*) ;
 int watchdog_set_nowayout (TYPE_1__*,int ) ;

__attribute__((used)) static int ie6xx_wdt_probe(struct platform_device *pdev)
{
 struct resource *res;
 u8 wdtlr;
 int ret;

 res = platform_get_resource(pdev, IORESOURCE_IO, 0);
 if (!res)
  return -ENODEV;

 if (!request_region(res->start, resource_size(res), pdev->name)) {
  dev_err(&pdev->dev, "Watchdog region 0x%llx already in use!\n",
   (u64)res->start);
  return -EBUSY;
 }

 ie6xx_wdt_data.sch_wdtba = res->start;
 dev_dbg(&pdev->dev, "WDT = 0x%X\n", ie6xx_wdt_data.sch_wdtba);

 ie6xx_wdt_dev.timeout = timeout;
 watchdog_set_nowayout(&ie6xx_wdt_dev, nowayout);
 ie6xx_wdt_dev.parent = &pdev->dev;

 spin_lock_init(&ie6xx_wdt_data.unlock_sequence);

 wdtlr = inb(ie6xx_wdt_data.sch_wdtba + WDTLR);
 if (wdtlr & WDT_LOCK)
  dev_warn(&pdev->dev,
   "Watchdog Timer is Locked (Reg=0x%x)\n", wdtlr);

 ie6xx_wdt_debugfs_init();

 ret = watchdog_register_device(&ie6xx_wdt_dev);
 if (ret)
  goto misc_register_error;

 return 0;

misc_register_error:
 ie6xx_wdt_debugfs_exit();
 release_region(res->start, resource_size(res));
 ie6xx_wdt_data.sch_wdtba = 0;
 return ret;
}
