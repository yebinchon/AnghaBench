
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pwm_device {size_t hwpwm; } ;
struct meson_pwm {int lock; scalar_t__ base; } ;
struct TYPE_2__ {int pwm_en_mask; } ;


 scalar_t__ REG_MISC_AB ;
 TYPE_1__* meson_pwm_per_channel_data ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void meson_pwm_disable(struct meson_pwm *meson, struct pwm_device *pwm)
{
 unsigned long flags;
 u32 value;

 spin_lock_irqsave(&meson->lock, flags);

 value = readl(meson->base + REG_MISC_AB);
 value &= ~meson_pwm_per_channel_data[pwm->hwpwm].pwm_en_mask;
 writel(value, meson->base + REG_MISC_AB);

 spin_unlock_irqrestore(&meson->lock, flags);
}
