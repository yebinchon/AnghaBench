
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int ath79_wdt_miscdev ;
 int clk_disable_unprepare (int ) ;
 int misc_deregister (int *) ;
 int wdt_clk ;

__attribute__((used)) static int ath79_wdt_remove(struct platform_device *pdev)
{
 misc_deregister(&ath79_wdt_miscdev);
 clk_disable_unprepare(wdt_clk);
 return 0;
}
