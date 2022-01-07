
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_rtc_info {int lock; scalar_t__ base; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ TEGRA_RTC_REG_MILLI_SECONDS ;
 scalar_t__ TEGRA_RTC_REG_SHADOW_SECONDS ;
 struct tegra_rtc_info* dev_get_drvdata (struct device*) ;
 int dev_vdbg (struct device*,char*,int ,struct rtc_time*) ;
 int readl (scalar_t__) ;
 int rtc_time64_to_tm (int ,struct rtc_time*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int tegra_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 struct tegra_rtc_info *info = dev_get_drvdata(dev);
 unsigned long flags;
 u32 sec, msec;





 spin_lock_irqsave(&info->lock, flags);

 msec = readl(info->base + TEGRA_RTC_REG_MILLI_SECONDS);
 sec = readl(info->base + TEGRA_RTC_REG_SHADOW_SECONDS);

 spin_unlock_irqrestore(&info->lock, flags);

 rtc_time64_to_tm(sec, tm);

 dev_vdbg(dev, "time read as %u, %ptR\n", sec, tm);

 return 0;
}
