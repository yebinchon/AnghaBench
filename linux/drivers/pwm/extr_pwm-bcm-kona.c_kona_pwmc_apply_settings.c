
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kona_pwmc {scalar_t__ base; } ;


 scalar_t__ PWM_CONTROL_OFFSET ;
 int PWM_CONTROL_SMOOTH_SHIFT (unsigned int) ;
 int PWM_CONTROL_TRIGGER_SHIFT (unsigned int) ;
 int ndelay (int) ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void kona_pwmc_apply_settings(struct kona_pwmc *kp, unsigned int chan)
{
 unsigned int value = readl(kp->base + PWM_CONTROL_OFFSET);


 value &= ~(1 << PWM_CONTROL_SMOOTH_SHIFT(chan));
 value |= 1 << PWM_CONTROL_TRIGGER_SHIFT(chan);
 writel(value, kp->base + PWM_CONTROL_OFFSET);


 ndelay(400);
}
