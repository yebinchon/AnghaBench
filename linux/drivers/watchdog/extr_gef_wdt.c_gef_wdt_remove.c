
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int gef_wdt_handler_disable () ;
 int gef_wdt_miscdev ;
 int gef_wdt_regs ;
 int iounmap (int ) ;
 int misc_deregister (int *) ;

__attribute__((used)) static int gef_wdt_remove(struct platform_device *dev)
{
 misc_deregister(&gef_wdt_miscdev);

 gef_wdt_handler_disable();

 iounmap(gef_wdt_regs);

 return 0;
}
