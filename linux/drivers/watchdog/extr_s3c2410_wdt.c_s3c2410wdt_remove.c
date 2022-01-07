
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410_wdt {int clock; int wdt_device; } ;
struct platform_device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct s3c2410_wdt* platform_get_drvdata (struct platform_device*) ;
 int s3c2410wdt_cpufreq_deregister (struct s3c2410_wdt*) ;
 int s3c2410wdt_mask_and_disable_reset (struct s3c2410_wdt*,int) ;
 int watchdog_unregister_device (int *) ;

__attribute__((used)) static int s3c2410wdt_remove(struct platform_device *dev)
{
 int ret;
 struct s3c2410_wdt *wdt = platform_get_drvdata(dev);

 ret = s3c2410wdt_mask_and_disable_reset(wdt, 1);
 if (ret < 0)
  return ret;

 watchdog_unregister_device(&wdt->wdt_device);

 s3c2410wdt_cpufreq_deregister(wdt);

 clk_disable_unprepare(wdt->clock);

 return 0;
}
