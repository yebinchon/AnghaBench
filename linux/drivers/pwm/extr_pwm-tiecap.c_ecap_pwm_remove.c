
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct ecap_pwm_chip {int chip; } ;


 struct ecap_pwm_chip* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pwmchip_remove (int *) ;

__attribute__((used)) static int ecap_pwm_remove(struct platform_device *pdev)
{
 struct ecap_pwm_chip *pc = platform_get_drvdata(pdev);

 pm_runtime_disable(&pdev->dev);

 return pwmchip_remove(&pc->chip);
}
