
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;
struct lpc18xx_pwm_data {unsigned long duty_event; } ;
struct lpc18xx_pwm_chip {int event_map; int dev; } ;


 int EBUSY ;
 unsigned long LPC18XX_PWM_EVENT_MAX ;
 int dev_err (int ,char*) ;
 unsigned long find_first_zero_bit (int *,unsigned long) ;
 struct lpc18xx_pwm_data* pwm_get_chip_data (struct pwm_device*) ;
 int set_bit (unsigned long,int *) ;
 struct lpc18xx_pwm_chip* to_lpc18xx_pwm_chip (struct pwm_chip*) ;

__attribute__((used)) static int lpc18xx_pwm_request(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct lpc18xx_pwm_chip *lpc18xx_pwm = to_lpc18xx_pwm_chip(chip);
 struct lpc18xx_pwm_data *lpc18xx_data = pwm_get_chip_data(pwm);
 unsigned long event;

 event = find_first_zero_bit(&lpc18xx_pwm->event_map,
        LPC18XX_PWM_EVENT_MAX);

 if (event >= LPC18XX_PWM_EVENT_MAX) {
  dev_err(lpc18xx_pwm->dev,
   "maximum number of simultaneous channels reached\n");
  return -EBUSY;
 };

 set_bit(event, &lpc18xx_pwm->event_map);
 lpc18xx_data->duty_event = event;

 return 0;
}
