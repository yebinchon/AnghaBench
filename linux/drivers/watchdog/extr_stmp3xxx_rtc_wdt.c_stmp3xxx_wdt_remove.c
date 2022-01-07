
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int unregister_reboot_notifier (int *) ;
 int wdt_notifier ;

__attribute__((used)) static int stmp3xxx_wdt_remove(struct platform_device *pdev)
{
 unregister_reboot_notifier(&wdt_notifier);
 return 0;
}
