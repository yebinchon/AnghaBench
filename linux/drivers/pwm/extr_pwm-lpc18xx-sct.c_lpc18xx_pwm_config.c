
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int hwpwm; } ;
struct pwm_chip {int npwm; int * pwms; int dev; } ;
struct lpc18xx_pwm_chip {int min_period_ns; int max_period_ns; int period_ns; int period_lock; int event_map; } ;


 int EBUSY ;
 int ERANGE ;
 int LPC18XX_PWM_EVENT_MAX ;
 int bitmap_weight (int *,int ) ;
 int dev_err (int ,char*,int) ;
 int lpc18xx_pwm_config_duty (struct pwm_chip*,struct pwm_device*,int) ;
 int lpc18xx_pwm_config_period (struct pwm_chip*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pwm_set_period (int *,int) ;
 struct lpc18xx_pwm_chip* to_lpc18xx_pwm_chip (struct pwm_chip*) ;

__attribute__((used)) static int lpc18xx_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,
         int duty_ns, int period_ns)
{
 struct lpc18xx_pwm_chip *lpc18xx_pwm = to_lpc18xx_pwm_chip(chip);
 int requested_events, i;

 if (period_ns < lpc18xx_pwm->min_period_ns ||
     period_ns > lpc18xx_pwm->max_period_ns) {
  dev_err(chip->dev, "period %d not in range\n", period_ns);
  return -ERANGE;
 }

 mutex_lock(&lpc18xx_pwm->period_lock);

 requested_events = bitmap_weight(&lpc18xx_pwm->event_map,
      LPC18XX_PWM_EVENT_MAX);






 if (requested_events > 2 && lpc18xx_pwm->period_ns != period_ns &&
     lpc18xx_pwm->period_ns) {
  dev_err(chip->dev, "conflicting period requested for PWM %u\n",
   pwm->hwpwm);
  mutex_unlock(&lpc18xx_pwm->period_lock);
  return -EBUSY;
 }

 if ((requested_events <= 2 && lpc18xx_pwm->period_ns != period_ns) ||
     !lpc18xx_pwm->period_ns) {
  lpc18xx_pwm->period_ns = period_ns;
  for (i = 0; i < chip->npwm; i++)
   pwm_set_period(&chip->pwms[i], period_ns);
  lpc18xx_pwm_config_period(chip, period_ns);
 }

 mutex_unlock(&lpc18xx_pwm->period_lock);

 lpc18xx_pwm_config_duty(chip, pwm, duty_ns);

 return 0;
}
