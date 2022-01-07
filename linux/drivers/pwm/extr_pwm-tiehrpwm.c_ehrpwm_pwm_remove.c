
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct ehrpwm_pwm_chip {int chip; int tbclk; } ;


 int clk_unprepare (int ) ;
 struct ehrpwm_pwm_chip* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pwmchip_remove (int *) ;

__attribute__((used)) static int ehrpwm_pwm_remove(struct platform_device *pdev)
{
 struct ehrpwm_pwm_chip *pc = platform_get_drvdata(pdev);

 clk_unprepare(pc->tbclk);

 pm_runtime_disable(&pdev->dev);

 return pwmchip_remove(&pc->chip);
}
