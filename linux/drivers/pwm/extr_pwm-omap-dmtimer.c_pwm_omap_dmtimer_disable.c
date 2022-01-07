
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pwm_omap_dmtimer_chip {int mutex; int dm_timer; TYPE_1__* pdata; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;
struct TYPE_2__ {int (* stop ) (int ) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (int ) ;
 struct pwm_omap_dmtimer_chip* to_pwm_omap_dmtimer_chip (struct pwm_chip*) ;

__attribute__((used)) static void pwm_omap_dmtimer_disable(struct pwm_chip *chip,
         struct pwm_device *pwm)
{
 struct pwm_omap_dmtimer_chip *omap = to_pwm_omap_dmtimer_chip(chip);

 mutex_lock(&omap->mutex);
 omap->pdata->stop(omap->dm_timer);
 mutex_unlock(&omap->mutex);
}
