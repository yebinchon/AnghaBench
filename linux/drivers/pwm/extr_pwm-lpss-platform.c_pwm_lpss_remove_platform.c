
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_lpss_chip {int dummy; } ;
struct platform_device {int dev; } ;


 struct pwm_lpss_chip* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pwm_lpss_remove (struct pwm_lpss_chip*) ;

__attribute__((used)) static int pwm_lpss_remove_platform(struct platform_device *pdev)
{
 struct pwm_lpss_chip *lpwm = platform_get_drvdata(pdev);

 pm_runtime_disable(&pdev->dev);
 return pwm_lpss_remove(lpwm);
}
