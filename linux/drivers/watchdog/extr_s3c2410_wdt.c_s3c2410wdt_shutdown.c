
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410_wdt {int wdt_device; } ;
struct platform_device {int dummy; } ;


 struct s3c2410_wdt* platform_get_drvdata (struct platform_device*) ;
 int s3c2410wdt_mask_and_disable_reset (struct s3c2410_wdt*,int) ;
 int s3c2410wdt_stop (int *) ;

__attribute__((used)) static void s3c2410wdt_shutdown(struct platform_device *dev)
{
 struct s3c2410_wdt *wdt = platform_get_drvdata(dev);

 s3c2410wdt_mask_and_disable_reset(wdt, 1);

 s3c2410wdt_stop(&wdt->wdt_device);
}
