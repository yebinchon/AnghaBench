
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pwm_device {scalar_t__ hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct lp3943_pwm_map {int dummy; } ;
struct lp3943_pwm {int dummy; } ;


 int LP3943_DIM_PWM0 ;
 int LP3943_DIM_PWM1 ;
 int lp3943_pwm_set_mode (struct lp3943_pwm*,struct lp3943_pwm_map*,int ) ;
 struct lp3943_pwm_map* pwm_get_chip_data (struct pwm_device*) ;
 struct lp3943_pwm* to_lp3943_pwm (struct pwm_chip*) ;

__attribute__((used)) static int lp3943_pwm_enable(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct lp3943_pwm *lp3943_pwm = to_lp3943_pwm(chip);
 struct lp3943_pwm_map *pwm_map = pwm_get_chip_data(pwm);
 u8 val;

 if (pwm->hwpwm == 0)
  val = LP3943_DIM_PWM0;
 else
  val = LP3943_DIM_PWM1;






 return lp3943_pwm_set_mode(lp3943_pwm, pwm_map, val);
}
