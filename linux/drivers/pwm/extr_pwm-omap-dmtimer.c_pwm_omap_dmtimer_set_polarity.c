
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pwm_omap_dmtimer_chip {int mutex; int dm_timer; TYPE_1__* pdata; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;
typedef enum pwm_polarity { ____Placeholder_pwm_polarity } pwm_polarity ;
struct TYPE_2__ {int (* set_pwm ) (int ,int,int,int ) ;} ;


 int PWM_OMAP_DMTIMER_TRIGGER_OVERFLOW_AND_COMPARE ;
 int PWM_POLARITY_INVERSED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (int ,int,int,int ) ;
 struct pwm_omap_dmtimer_chip* to_pwm_omap_dmtimer_chip (struct pwm_chip*) ;

__attribute__((used)) static int pwm_omap_dmtimer_set_polarity(struct pwm_chip *chip,
      struct pwm_device *pwm,
      enum pwm_polarity polarity)
{
 struct pwm_omap_dmtimer_chip *omap = to_pwm_omap_dmtimer_chip(chip);





 mutex_lock(&omap->mutex);
 omap->pdata->set_pwm(omap->dm_timer,
         polarity == PWM_POLARITY_INVERSED,
         1,
         PWM_OMAP_DMTIMER_TRIGGER_OVERFLOW_AND_COMPARE);
 mutex_unlock(&omap->mutex);

 return 0;
}
