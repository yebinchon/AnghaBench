
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct bcm2835_pwm {scalar_t__ base; } ;


 scalar_t__ PWM_CONTROL ;
 int PWM_CONTROL_SHIFT (int ) ;
 int PWM_ENABLE ;
 int readl (scalar_t__) ;
 struct bcm2835_pwm* to_bcm2835_pwm (struct pwm_chip*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int bcm2835_pwm_enable(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct bcm2835_pwm *pc = to_bcm2835_pwm(chip);
 u32 value;

 value = readl(pc->base + PWM_CONTROL);
 value |= PWM_ENABLE << PWM_CONTROL_SHIFT(pwm->hwpwm);
 writel(value, pc->base + PWM_CONTROL);

 return 0;
}
