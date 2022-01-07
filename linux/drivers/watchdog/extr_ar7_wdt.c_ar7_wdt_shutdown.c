
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int ar7_wdt_disable_wdt () ;
 int nowayout ;

__attribute__((used)) static void ar7_wdt_shutdown(struct platform_device *pdev)
{
 if (!nowayout)
  ar7_wdt_disable_wdt();
}
