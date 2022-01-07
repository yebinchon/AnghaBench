
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pwms; } ;
struct spear_pwm_chip {TYPE_1__ chip; int clk; } ;
struct platform_device {int dummy; } ;


 int NUM_PWM ;
 int clk_unprepare (int ) ;
 struct spear_pwm_chip* platform_get_drvdata (struct platform_device*) ;
 int pwm_disable (int *) ;
 int pwmchip_remove (TYPE_1__*) ;

__attribute__((used)) static int spear_pwm_remove(struct platform_device *pdev)
{
 struct spear_pwm_chip *pc = platform_get_drvdata(pdev);
 int i;

 for (i = 0; i < NUM_PWM; i++)
  pwm_disable(&pc->chip.pwms[i]);


 clk_unprepare(pc->clk);
 return pwmchip_remove(&pc->chip);
}
