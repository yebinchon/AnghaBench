
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_pwm_chip {int sys_clk; int pwm_clk; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*) ;
 struct img_pwm_chip* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int img_pwm_runtime_resume(struct device *dev)
{
 struct img_pwm_chip *pwm_chip = dev_get_drvdata(dev);
 int ret;

 ret = clk_prepare_enable(pwm_chip->sys_clk);
 if (ret < 0) {
  dev_err(dev, "could not prepare or enable sys clock\n");
  return ret;
 }

 ret = clk_prepare_enable(pwm_chip->pwm_clk);
 if (ret < 0) {
  dev_err(dev, "could not prepare or enable pwm clock\n");
  clk_disable_unprepare(pwm_chip->sys_clk);
  return ret;
 }

 return 0;
}
