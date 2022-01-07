
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dev; } ;
struct atmel_tcb_pwm_device {int dummy; } ;
struct atmel_tcb_pwm_chip {int ** pwms; struct atmel_tc* tc; } ;
struct atmel_tc {int * clk; } ;


 int clk_disable_unprepare (int ) ;
 int devm_kfree (int ,struct atmel_tcb_pwm_device*) ;
 struct atmel_tcb_pwm_device* pwm_get_chip_data (struct pwm_device*) ;
 struct atmel_tcb_pwm_chip* to_tcb_chip (struct pwm_chip*) ;

__attribute__((used)) static void atmel_tcb_pwm_free(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct atmel_tcb_pwm_chip *tcbpwmc = to_tcb_chip(chip);
 struct atmel_tcb_pwm_device *tcbpwm = pwm_get_chip_data(pwm);
 struct atmel_tc *tc = tcbpwmc->tc;

 clk_disable_unprepare(tc->clk[pwm->hwpwm / 2]);
 tcbpwmc->pwms[pwm->hwpwm] = ((void*)0);
 devm_kfree(chip->dev, tcbpwm);
}
