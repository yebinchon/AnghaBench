
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dev; int * pwms; } ;
struct pwm_lpss_chip {TYPE_2__ chip; TYPE_1__* info; } ;
struct TYPE_3__ {int npwm; } ;


 int pm_runtime_put (int ) ;
 scalar_t__ pwm_is_enabled (int *) ;
 int pwmchip_remove (TYPE_2__*) ;

int pwm_lpss_remove(struct pwm_lpss_chip *lpwm)
{
 int i;

 for (i = 0; i < lpwm->info->npwm; i++) {
  if (pwm_is_enabled(&lpwm->chip.pwms[i]))
   pm_runtime_put(lpwm->chip.dev);
 }
 return pwmchip_remove(&lpwm->chip);
}
