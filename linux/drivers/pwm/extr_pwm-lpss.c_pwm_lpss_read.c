
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pwm_lpss_chip {scalar_t__ regs; } ;
struct pwm_device {int hwpwm; int chip; } ;


 scalar_t__ PWM ;
 int PWM_SIZE ;
 int readl (scalar_t__) ;
 struct pwm_lpss_chip* to_lpwm (int ) ;

__attribute__((used)) static inline u32 pwm_lpss_read(const struct pwm_device *pwm)
{
 struct pwm_lpss_chip *lpwm = to_lpwm(pwm->chip);

 return readl(lpwm->regs + pwm->hwpwm * PWM_SIZE + PWM);
}
