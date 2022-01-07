
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int * pm_power_off ;

__attribute__((used)) static int qnap_power_off_remove(struct platform_device *pdev)
{
 pm_power_off = ((void*)0);
 return 0;
}
