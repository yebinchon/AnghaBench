
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_pwm_chip {int chip; } ;
struct platform_device {int dev; } ;


 struct rcar_pwm_chip* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pwmchip_remove (int *) ;

__attribute__((used)) static int rcar_pwm_remove(struct platform_device *pdev)
{
 struct rcar_pwm_chip *rcar_pwm = platform_get_drvdata(pdev);

 pm_runtime_disable(&pdev->dev);

 return pwmchip_remove(&rcar_pwm->chip);
}
