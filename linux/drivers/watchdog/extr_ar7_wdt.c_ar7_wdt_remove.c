
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int ar7_wdt_miscdev ;
 int clk_put (int *) ;
 int misc_deregister (int *) ;
 int * vbus_clk ;

__attribute__((used)) static int ar7_wdt_remove(struct platform_device *pdev)
{
 misc_deregister(&ar7_wdt_miscdev);
 clk_put(vbus_clk);
 vbus_clk = ((void*)0);
 return 0;
}
