
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int dummy; } ;


 int PWM_ENABLE ;
 int pwm_lpss_read (struct pwm_device*) ;
 int pwm_lpss_write (struct pwm_device*,int) ;

__attribute__((used)) static inline void pwm_lpss_cond_enable(struct pwm_device *pwm, bool cond)
{
 if (cond)
  pwm_lpss_write(pwm, pwm_lpss_read(pwm) | PWM_ENABLE);
}
