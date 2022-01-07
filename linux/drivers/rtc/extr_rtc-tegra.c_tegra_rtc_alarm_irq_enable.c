
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_rtc_info {int lock; scalar_t__ base; } ;
struct device {int dummy; } ;


 int TEGRA_RTC_INTR_MASK_SEC_ALARM0 ;
 scalar_t__ TEGRA_RTC_REG_INTR_MASK ;
 struct tegra_rtc_info* dev_get_drvdata (struct device*) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tegra_rtc_wait_while_busy (struct device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int tegra_rtc_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 struct tegra_rtc_info *info = dev_get_drvdata(dev);
 unsigned long flags;
 u32 status;

 tegra_rtc_wait_while_busy(dev);
 spin_lock_irqsave(&info->lock, flags);


 status = readl(info->base + TEGRA_RTC_REG_INTR_MASK);
 if (enabled)
  status |= TEGRA_RTC_INTR_MASK_SEC_ALARM0;
 else
  status &= ~TEGRA_RTC_INTR_MASK_SEC_ALARM0;

 writel(status, info->base + TEGRA_RTC_REG_INTR_MASK);

 spin_unlock_irqrestore(&info->lock, flags);

 return 0;
}
