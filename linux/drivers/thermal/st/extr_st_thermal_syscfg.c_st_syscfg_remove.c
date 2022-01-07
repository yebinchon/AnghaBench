
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int st_thermal_unregister (struct platform_device*) ;

__attribute__((used)) static int st_syscfg_remove(struct platform_device *pdev)
{
 return st_thermal_unregister(pdev);
}
