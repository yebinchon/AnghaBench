
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int EBUSY ;
 int dev_err (int *,char*) ;
 int * pm_power_off ;
 int restart_poweroff_do_poweroff ;

__attribute__((used)) static int restart_poweroff_probe(struct platform_device *pdev)
{

 if (pm_power_off != ((void*)0)) {
  dev_err(&pdev->dev,
   "pm_power_off function already registered");
  return -EBUSY;
 }

 pm_power_off = &restart_poweroff_do_poweroff;
 return 0;
}
