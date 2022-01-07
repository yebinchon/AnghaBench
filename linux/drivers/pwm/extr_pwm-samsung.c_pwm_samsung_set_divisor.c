
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int div_base; } ;
struct samsung_pwm_chip {scalar_t__ base; TYPE_1__ variant; } ;


 scalar_t__ REG_TCFG1 ;
 int TCFG1_MUX_MASK ;
 int TCFG1_SHIFT (unsigned int) ;
 int fls (int) ;
 int readl (scalar_t__) ;
 int samsung_pwm_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void pwm_samsung_set_divisor(struct samsung_pwm_chip *pwm,
        unsigned int channel, u8 divisor)
{
 u8 shift = TCFG1_SHIFT(channel);
 unsigned long flags;
 u32 reg;
 u8 bits;

 bits = (fls(divisor) - 1) - pwm->variant.div_base;

 spin_lock_irqsave(&samsung_pwm_lock, flags);

 reg = readl(pwm->base + REG_TCFG1);
 reg &= ~(TCFG1_MUX_MASK << shift);
 reg |= bits << shift;
 writel(reg, pwm->base + REG_TCFG1);

 spin_unlock_irqrestore(&samsung_pwm_lock, flags);
}
