
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 scalar_t__ SYSTEM_POWER_OFF ;
 int mrst_poweroff (int *) ;
 int rtc_mrst_do_shutdown () ;
 scalar_t__ system_state ;

__attribute__((used)) static void vrtc_mrst_platform_shutdown(struct platform_device *pdev)
{
 if (system_state == SYSTEM_POWER_OFF && !mrst_poweroff(&pdev->dev))
  return;

 rtc_mrst_do_shutdown();
}
