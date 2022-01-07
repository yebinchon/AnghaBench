
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_pwm_chip {int sys_clk; int pwm_clk; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct img_pwm_chip* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int img_pwm_runtime_suspend(struct device *dev)
{
 struct img_pwm_chip *pwm_chip = dev_get_drvdata(dev);

 clk_disable_unprepare(pwm_chip->pwm_clk);
 clk_disable_unprepare(pwm_chip->sys_clk);

 return 0;
}
