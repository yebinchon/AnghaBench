
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_pwm_chip {int clk; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct pxa_pwm_chip* to_pxa_pwm_chip (struct pwm_chip*) ;

__attribute__((used)) static void pxa_pwm_disable(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct pxa_pwm_chip *pc = to_pxa_pwm_chip(chip);

 clk_disable_unprepare(pc->clk);
}
