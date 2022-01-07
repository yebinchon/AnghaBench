
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_omap_dmtimer_chip {int mutex; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pwm_omap_dmtimer_start (struct pwm_omap_dmtimer_chip*) ;
 struct pwm_omap_dmtimer_chip* to_pwm_omap_dmtimer_chip (struct pwm_chip*) ;

__attribute__((used)) static int pwm_omap_dmtimer_enable(struct pwm_chip *chip,
       struct pwm_device *pwm)
{
 struct pwm_omap_dmtimer_chip *omap = to_pwm_omap_dmtimer_chip(chip);

 mutex_lock(&omap->mutex);
 pwm_omap_dmtimer_start(omap);
 mutex_unlock(&omap->mutex);

 return 0;
}
