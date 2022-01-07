
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_mediatek_chip {int clk_top; int clk_main; int * clk_pwms; } ;
struct pwm_device {size_t hwpwm; } ;
struct pwm_chip {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct pwm_mediatek_chip* to_pwm_mediatek_chip (struct pwm_chip*) ;

__attribute__((used)) static void pwm_mediatek_clk_disable(struct pwm_chip *chip,
         struct pwm_device *pwm)
{
 struct pwm_mediatek_chip *pc = to_pwm_mediatek_chip(chip);

 clk_disable_unprepare(pc->clk_pwms[pwm->hwpwm]);
 clk_disable_unprepare(pc->clk_main);
 clk_disable_unprepare(pc->clk_top);
}
