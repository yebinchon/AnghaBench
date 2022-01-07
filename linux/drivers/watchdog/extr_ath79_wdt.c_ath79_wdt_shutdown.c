
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int ath79_wdt_disable () ;

__attribute__((used)) static void ath79_wdt_shutdown(struct platform_device *pdev)
{
 ath79_wdt_disable();
}
