
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pwm_lpss_chip {scalar_t__ regs; } ;
struct pwm_device {int hwpwm; int chip; } ;


 scalar_t__ PWM ;
 int PWM_SIZE ;
 struct pwm_lpss_chip* to_lpwm (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void pwm_lpss_write(const struct pwm_device *pwm, u32 value)
{
 struct pwm_lpss_chip *lpwm = to_lpwm(pwm->chip);

 writel(value, lpwm->regs + pwm->hwpwm * PWM_SIZE + PWM);
}
