
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_rtc_info {int rtc; int lock; scalar_t__ base; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 unsigned long RTC_AF ;
 unsigned long RTC_IRQF ;
 unsigned long RTC_PF ;
 int TEGRA_RTC_INTR_STATUS_SEC_ALARM0 ;
 int TEGRA_RTC_INTR_STATUS_SEC_CDN_ALARM ;
 scalar_t__ TEGRA_RTC_REG_INTR_MASK ;
 scalar_t__ TEGRA_RTC_REG_INTR_STATUS ;
 struct tegra_rtc_info* dev_get_drvdata (struct device*) ;
 int readl (scalar_t__) ;
 int rtc_update_irq (int ,int,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tegra_rtc_wait_while_busy (struct device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t tegra_rtc_irq_handler(int irq, void *data)
{
 struct device *dev = data;
 struct tegra_rtc_info *info = dev_get_drvdata(dev);
 unsigned long events = 0, flags;
 u32 status;

 status = readl(info->base + TEGRA_RTC_REG_INTR_STATUS);
 if (status) {

  tegra_rtc_wait_while_busy(dev);

  spin_lock_irqsave(&info->lock, flags);
  writel(0, info->base + TEGRA_RTC_REG_INTR_MASK);
  writel(status, info->base + TEGRA_RTC_REG_INTR_STATUS);
  spin_unlock_irqrestore(&info->lock, flags);
 }


 if (status & TEGRA_RTC_INTR_STATUS_SEC_ALARM0)
  events |= RTC_IRQF | RTC_AF;


 if (status & TEGRA_RTC_INTR_STATUS_SEC_CDN_ALARM)
  events |= RTC_IRQF | RTC_PF;

 rtc_update_irq(info->rtc, 1, events);

 return IRQ_HANDLED;
}
