
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int dummy; } ;


 int EBUSY ;
 int PWM_SW_UPDATE ;
 int pwm_lpss_read (struct pwm_device*) ;

__attribute__((used)) static inline int pwm_lpss_is_updating(struct pwm_device *pwm)
{
 return (pwm_lpss_read(pwm) & PWM_SW_UPDATE) ? -EBUSY : 0;
}
