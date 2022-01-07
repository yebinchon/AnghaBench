
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int * as3722_pm_power_off ;
 int * as3722_pm_poweroff ;
 int * pm_power_off ;

__attribute__((used)) static int as3722_poweroff_remove(struct platform_device *pdev)
{
 if (pm_power_off == as3722_pm_power_off)
  pm_power_off = ((void*)0);
 as3722_pm_poweroff = ((void*)0);

 return 0;
}
