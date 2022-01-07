
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int expires; } ;
struct sh_wdt {TYPE_4__ timer; int lock; int * base; int * clk; int * dev; } ;
struct platform_device {int id; int dev; } ;
struct TYPE_7__ {int timeout; int * parent; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int WATCHDOG_HEARTBEAT ;
 int clock_division_ratio ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,...) ;
 int dev_warn (int *,char*,int ) ;
 int * devm_clk_get (int *,int *) ;
 struct sh_wdt* devm_kzalloc (int *,int,int ) ;
 int * devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int heartbeat ;
 int next_ping_period (int ) ;
 int nowayout ;
 int pm_runtime_enable (int *) ;
 TYPE_1__ sh_wdt_dev ;
 int sh_wdt_ping ;
 int sh_wdt_set_heartbeat (TYPE_1__*,int ) ;
 int spin_lock_init (int *) ;
 int timer_setup (TYPE_4__*,int ,int ) ;
 scalar_t__ unlikely (int) ;
 int watchdog_register_device (TYPE_1__*) ;
 int watchdog_set_drvdata (TYPE_1__*,struct sh_wdt*) ;
 int watchdog_set_nowayout (TYPE_1__*,int ) ;

__attribute__((used)) static int sh_wdt_probe(struct platform_device *pdev)
{
 struct sh_wdt *wdt;
 int rc;





 if (pdev->id != -1)
  return -EINVAL;

 wdt = devm_kzalloc(&pdev->dev, sizeof(struct sh_wdt), GFP_KERNEL);
 if (unlikely(!wdt))
  return -ENOMEM;

 wdt->dev = &pdev->dev;

 wdt->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(wdt->clk)) {




  wdt->clk = ((void*)0);
 }

 wdt->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(wdt->base))
  return PTR_ERR(wdt->base);

 watchdog_set_nowayout(&sh_wdt_dev, nowayout);
 watchdog_set_drvdata(&sh_wdt_dev, wdt);
 sh_wdt_dev.parent = &pdev->dev;

 spin_lock_init(&wdt->lock);

 rc = sh_wdt_set_heartbeat(&sh_wdt_dev, heartbeat);
 if (unlikely(rc)) {

  sh_wdt_set_heartbeat(&sh_wdt_dev, WATCHDOG_HEARTBEAT);

  dev_warn(&pdev->dev,
    "heartbeat value must be 1<=x<=3600, using %d\n",
    sh_wdt_dev.timeout);
 }

 dev_info(&pdev->dev, "configured with heartbeat=%d sec (nowayout=%d)\n",
   sh_wdt_dev.timeout, nowayout);

 rc = watchdog_register_device(&sh_wdt_dev);
 if (unlikely(rc)) {
  dev_err(&pdev->dev, "Can't register watchdog (err=%d)\n", rc);
  return rc;
 }

 timer_setup(&wdt->timer, sh_wdt_ping, 0);
 wdt->timer.expires = next_ping_period(clock_division_ratio);

 dev_info(&pdev->dev, "initialized.\n");

 pm_runtime_enable(&pdev->dev);

 return 0;
}
