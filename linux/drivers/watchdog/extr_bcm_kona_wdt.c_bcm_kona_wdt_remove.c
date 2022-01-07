
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int bcm_kona_wdt_debug_exit (struct platform_device*) ;
 int dev_dbg (int *,char*) ;

__attribute__((used)) static int bcm_kona_wdt_remove(struct platform_device *pdev)
{
 bcm_kona_wdt_debug_exit(pdev);
 dev_dbg(&pdev->dev, "Watchdog driver disabled");

 return 0;
}
