
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_pwm_chip {int clk; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;


 int clk_prepare_enable (int ) ;
 struct pxa_pwm_chip* to_pxa_pwm_chip (struct pwm_chip*) ;

__attribute__((used)) static int pxa_pwm_enable(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct pxa_pwm_chip *pc = to_pxa_pwm_chip(chip);

 return clk_prepare_enable(pc->clk);
}
