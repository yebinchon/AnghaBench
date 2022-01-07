
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct lpc18xx_wdt_dev {int timer; } ;


 int del_timer (int *) ;
 int dev_warn (int *,char*) ;
 struct lpc18xx_wdt_dev* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int lpc18xx_wdt_remove(struct platform_device *pdev)
{
 struct lpc18xx_wdt_dev *lpc18xx_wdt = platform_get_drvdata(pdev);

 dev_warn(&pdev->dev, "I quit now, hardware will probably reboot!\n");
 del_timer(&lpc18xx_wdt->timer);

 return 0;
}
