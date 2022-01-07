
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;
struct lpc18xx_pwm_data {int duty_event; } ;
struct lpc18xx_pwm_chip {int event_map; } ;


 int clear_bit (int ,int *) ;
 struct lpc18xx_pwm_data* pwm_get_chip_data (struct pwm_device*) ;
 struct lpc18xx_pwm_chip* to_lpc18xx_pwm_chip (struct pwm_chip*) ;

__attribute__((used)) static void lpc18xx_pwm_free(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct lpc18xx_pwm_chip *lpc18xx_pwm = to_lpc18xx_pwm_chip(chip);
 struct lpc18xx_pwm_data *lpc18xx_data = pwm_get_chip_data(pwm);

 clear_bit(lpc18xx_data->duty_event, &lpc18xx_pwm->event_map);
}
