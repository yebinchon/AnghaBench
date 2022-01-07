
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int TIMER_WDT_ID ;
 int bcm63xx_timer_unregister (int ) ;
 int bcm63xx_wdt_miscdev ;
 int bcm63xx_wdt_pause () ;
 int misc_deregister (int *) ;
 int nowayout ;

__attribute__((used)) static int bcm63xx_wdt_remove(struct platform_device *pdev)
{
 if (!nowayout)
  bcm63xx_wdt_pause();

 misc_deregister(&bcm63xx_wdt_miscdev);
 bcm63xx_timer_unregister(TIMER_WDT_ID);
 return 0;
}
