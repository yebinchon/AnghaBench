
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int * bcm2835_power_off ;
 int * pm_power_off ;

__attribute__((used)) static int bcm2835_wdt_remove(struct platform_device *pdev)
{
 if (pm_power_off == bcm2835_power_off)
  pm_power_off = ((void*)0);

 return 0;
}
