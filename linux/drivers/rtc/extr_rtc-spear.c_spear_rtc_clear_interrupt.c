
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spear_rtc_config {int lock; scalar_t__ ioaddr; } ;


 unsigned int RTC_INT_MASK ;
 scalar_t__ STATUS_REG ;
 unsigned int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static inline void spear_rtc_clear_interrupt(struct spear_rtc_config *config)
{
 unsigned int val;
 unsigned long flags;

 spin_lock_irqsave(&config->lock, flags);
 val = readl(config->ioaddr + STATUS_REG);
 val |= RTC_INT_MASK;
 writel(val, config->ioaddr + STATUS_REG);
 spin_unlock_irqrestore(&config->lock, flags);
}
