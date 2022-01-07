
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pwm_lpss_chip {TYPE_1__* info; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ other_devices_aml_touches_pwm_regs; } ;


 struct pwm_lpss_chip* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int pwm_lpss_prepare(struct device *dev)
{
 struct pwm_lpss_chip *lpwm = dev_get_drvdata(dev);





 if (lpwm->info->other_devices_aml_touches_pwm_regs)
  return 0;

 return 1;
}
