
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int misc_deregister (int *) ;
 int rc32434_wdt_miscdev ;

__attribute__((used)) static int rc32434_wdt_remove(struct platform_device *pdev)
{
 misc_deregister(&rc32434_wdt_miscdev);
 return 0;
}
