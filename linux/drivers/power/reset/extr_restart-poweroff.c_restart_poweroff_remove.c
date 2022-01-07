
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int * pm_power_off ;
 int restart_poweroff_do_poweroff ;

__attribute__((used)) static int restart_poweroff_remove(struct platform_device *pdev)
{
 if (pm_power_off == &restart_poweroff_do_poweroff)
  pm_power_off = ((void*)0);

 return 0;
}
