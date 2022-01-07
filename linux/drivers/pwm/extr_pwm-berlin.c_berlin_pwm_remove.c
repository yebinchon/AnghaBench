
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct berlin_pwm_chip {int clk; int chip; } ;


 int clk_disable_unprepare (int ) ;
 struct berlin_pwm_chip* platform_get_drvdata (struct platform_device*) ;
 int pwmchip_remove (int *) ;

__attribute__((used)) static int berlin_pwm_remove(struct platform_device *pdev)
{
 struct berlin_pwm_chip *pwm = platform_get_drvdata(pdev);
 int ret;

 ret = pwmchip_remove(&pwm->chip);
 clk_disable_unprepare(pwm->clk);

 return ret;
}
