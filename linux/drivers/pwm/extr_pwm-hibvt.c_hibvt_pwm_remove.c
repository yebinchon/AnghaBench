
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct hibvt_pwm_chip {int chip; int clk; int rstc; } ;


 int clk_disable_unprepare (int ) ;
 int msleep (int) ;
 struct hibvt_pwm_chip* platform_get_drvdata (struct platform_device*) ;
 int pwmchip_remove (int *) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;

__attribute__((used)) static int hibvt_pwm_remove(struct platform_device *pdev)
{
 struct hibvt_pwm_chip *pwm_chip;

 pwm_chip = platform_get_drvdata(pdev);

 reset_control_assert(pwm_chip->rstc);
 msleep(30);
 reset_control_deassert(pwm_chip->rstc);

 clk_disable_unprepare(pwm_chip->clk);

 return pwmchip_remove(&pwm_chip->chip);
}
