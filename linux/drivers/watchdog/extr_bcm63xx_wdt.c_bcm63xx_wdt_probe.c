
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int start; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int regs; int timer; } ;


 int ENODEV ;
 int ENXIO ;
 int IORESOURCE_MEM ;
 int TIMER_WDT_ID ;
 int WDT_DEFAULT_TIME ;
 int bcm63xx_timer_register (int ,int ,int *) ;
 int bcm63xx_timer_tick ;
 int bcm63xx_timer_unregister (int ) ;
 TYPE_1__ bcm63xx_wdt_device ;
 int bcm63xx_wdt_isr ;
 int bcm63xx_wdt_miscdev ;
 scalar_t__ bcm63xx_wdt_settimeout (int ) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int ) ;
 int devm_ioremap_nocache (int *,int ,int ) ;
 int misc_register (int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int resource_size (struct resource*) ;
 int timer_setup (int *,int ,int ) ;
 int wdt_time ;

__attribute__((used)) static int bcm63xx_wdt_probe(struct platform_device *pdev)
{
 int ret;
 struct resource *r;

 timer_setup(&bcm63xx_wdt_device.timer, bcm63xx_timer_tick, 0);

 r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!r) {
  dev_err(&pdev->dev, "failed to get resources\n");
  return -ENODEV;
 }

 bcm63xx_wdt_device.regs = devm_ioremap_nocache(&pdev->dev, r->start,
       resource_size(r));
 if (!bcm63xx_wdt_device.regs) {
  dev_err(&pdev->dev, "failed to remap I/O resources\n");
  return -ENXIO;
 }

 ret = bcm63xx_timer_register(TIMER_WDT_ID, bcm63xx_wdt_isr, ((void*)0));
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to register wdt timer isr\n");
  return ret;
 }

 if (bcm63xx_wdt_settimeout(wdt_time)) {
  bcm63xx_wdt_settimeout(WDT_DEFAULT_TIME);
  dev_info(&pdev->dev,
   ": wdt_time value must be 1 <= wdt_time <= 256, using %d\n",
   wdt_time);
 }

 ret = misc_register(&bcm63xx_wdt_miscdev);
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to register watchdog device\n");
  goto unregister_timer;
 }

 dev_info(&pdev->dev, " started, timer margin: %d sec\n",
      WDT_DEFAULT_TIME);

 return 0;

unregister_timer:
 bcm63xx_timer_unregister(TIMER_WDT_ID);
 return ret;
}
