
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_state {int enabled; int duty_cycle; int period; } ;
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dev; } ;
struct cros_ec_pwm_device {int ec; } ;


 int EC_PWM_MAX_DUTY ;
 int cros_ec_pwm_get_duty (int ,int ) ;
 int dev_err (int ,char*,int) ;
 struct cros_ec_pwm_device* pwm_to_cros_ec_pwm (struct pwm_chip*) ;

__attribute__((used)) static void cros_ec_pwm_get_state(struct pwm_chip *chip, struct pwm_device *pwm,
      struct pwm_state *state)
{
 struct cros_ec_pwm_device *ec_pwm = pwm_to_cros_ec_pwm(chip);
 int ret;

 ret = cros_ec_pwm_get_duty(ec_pwm->ec, pwm->hwpwm);
 if (ret < 0) {
  dev_err(chip->dev, "error getting initial duty: %d\n", ret);
  return;
 }

 state->enabled = (ret > 0);
 state->period = EC_PWM_MAX_DUTY;


 state->duty_cycle = ret;
}
