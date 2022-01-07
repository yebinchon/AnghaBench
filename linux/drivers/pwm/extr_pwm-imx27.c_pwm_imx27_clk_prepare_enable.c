
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_imx27_chip {int clk_ipg; int clk_per; } ;
struct pwm_chip {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 struct pwm_imx27_chip* to_pwm_imx27_chip (struct pwm_chip*) ;

__attribute__((used)) static int pwm_imx27_clk_prepare_enable(struct pwm_chip *chip)
{
 struct pwm_imx27_chip *imx = to_pwm_imx27_chip(chip);
 int ret;

 ret = clk_prepare_enable(imx->clk_ipg);
 if (ret)
  return ret;

 ret = clk_prepare_enable(imx->clk_per);
 if (ret) {
  clk_disable_unprepare(imx->clk_ipg);
  return ret;
 }

 return 0;
}
