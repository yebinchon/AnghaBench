
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int misc_deregister (int *) ;
 int mv64x60_wdt_handler_disable () ;
 int mv64x60_wdt_miscdev ;

__attribute__((used)) static int mv64x60_wdt_remove(struct platform_device *dev)
{
 misc_deregister(&mv64x60_wdt_miscdev);

 mv64x60_wdt_handler_disable();

 return 0;
}
