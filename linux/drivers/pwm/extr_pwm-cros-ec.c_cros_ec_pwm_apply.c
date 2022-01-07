
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_state {scalar_t__ period; int duty_cycle; scalar_t__ enabled; } ;
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct cros_ec_pwm_device {int ec; } ;


 scalar_t__ EC_PWM_MAX_DUTY ;
 int EINVAL ;
 int cros_ec_pwm_set_duty (int ,int ,int) ;
 struct cros_ec_pwm_device* pwm_to_cros_ec_pwm (struct pwm_chip*) ;

__attribute__((used)) static int cros_ec_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
        const struct pwm_state *state)
{
 struct cros_ec_pwm_device *ec_pwm = pwm_to_cros_ec_pwm(chip);
 int duty_cycle;


 if (state->period != EC_PWM_MAX_DUTY)
  return -EINVAL;





 duty_cycle = state->enabled ? state->duty_cycle : 0;

 return cros_ec_pwm_set_duty(ec_pwm->ec, pwm->hwpwm, duty_cycle);
}
