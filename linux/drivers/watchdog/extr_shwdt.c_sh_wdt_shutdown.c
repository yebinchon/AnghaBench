
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int sh_wdt_dev ;
 int sh_wdt_stop (int *) ;

__attribute__((used)) static void sh_wdt_shutdown(struct platform_device *pdev)
{
 sh_wdt_stop(&sh_wdt_dev);
}
