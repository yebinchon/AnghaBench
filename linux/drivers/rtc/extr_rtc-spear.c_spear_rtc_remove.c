
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spear_rtc_config {int clk; } ;
struct platform_device {int dev; } ;


 int clk_disable_unprepare (int ) ;
 int device_init_wakeup (int *,int ) ;
 struct spear_rtc_config* platform_get_drvdata (struct platform_device*) ;
 int spear_rtc_disable_interrupt (struct spear_rtc_config*) ;

__attribute__((used)) static int spear_rtc_remove(struct platform_device *pdev)
{
 struct spear_rtc_config *config = platform_get_drvdata(pdev);

 spear_rtc_disable_interrupt(config);
 clk_disable_unprepare(config->clk);
 device_init_wakeup(&pdev->dev, 0);

 return 0;
}
