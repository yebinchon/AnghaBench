
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_mediatek_chip {int clk_top; int clk_main; int * clk_pwms; } ;
struct pwm_device {size_t hwpwm; } ;
struct pwm_chip {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 struct pwm_mediatek_chip* to_pwm_mediatek_chip (struct pwm_chip*) ;

__attribute__((used)) static int pwm_mediatek_clk_enable(struct pwm_chip *chip,
       struct pwm_device *pwm)
{
 struct pwm_mediatek_chip *pc = to_pwm_mediatek_chip(chip);
 int ret;

 ret = clk_prepare_enable(pc->clk_top);
 if (ret < 0)
  return ret;

 ret = clk_prepare_enable(pc->clk_main);
 if (ret < 0)
  goto disable_clk_top;

 ret = clk_prepare_enable(pc->clk_pwms[pwm->hwpwm]);
 if (ret < 0)
  goto disable_clk_main;

 return 0;

disable_clk_main:
 clk_disable_unprepare(pc->clk_main);
disable_clk_top:
 clk_disable_unprepare(pc->clk_top);

 return ret;
}
