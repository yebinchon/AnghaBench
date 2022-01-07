
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
typedef int pm_message_t ;


 int prcmu_stop_temp_sense () ;

__attribute__((used)) static int db8500_thermal_suspend(struct platform_device *pdev,
  pm_message_t state)
{
 prcmu_stop_temp_sense();

 return 0;
}
