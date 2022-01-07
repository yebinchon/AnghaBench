
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int bcm63xx_wdt_pause () ;

__attribute__((used)) static void bcm63xx_wdt_shutdown(struct platform_device *pdev)
{
 bcm63xx_wdt_pause();
}
