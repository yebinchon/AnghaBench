
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int at91_wdt_stop () ;

__attribute__((used)) static void at91wdt_shutdown(struct platform_device *pdev)
{
 at91_wdt_stop();
}
