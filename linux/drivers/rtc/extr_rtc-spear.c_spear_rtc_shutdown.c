
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spear_rtc_config {int clk; } ;
struct platform_device {int dummy; } ;


 int clk_disable (int ) ;
 struct spear_rtc_config* platform_get_drvdata (struct platform_device*) ;
 int spear_rtc_disable_interrupt (struct spear_rtc_config*) ;

__attribute__((used)) static void spear_rtc_shutdown(struct platform_device *pdev)
{
 struct spear_rtc_config *config = platform_get_drvdata(pdev);

 spear_rtc_disable_interrupt(config);
 clk_disable(config->clk);
}
