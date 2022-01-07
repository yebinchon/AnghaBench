
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_imx27_chip {int clk_ipg; int clk_per; } ;
struct pwm_chip {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct pwm_imx27_chip* to_pwm_imx27_chip (struct pwm_chip*) ;

__attribute__((used)) static void pwm_imx27_clk_disable_unprepare(struct pwm_chip *chip)
{
 struct pwm_imx27_chip *imx = to_pwm_imx27_chip(chip);

 clk_disable_unprepare(imx->clk_per);
 clk_disable_unprepare(imx->clk_ipg);
}
