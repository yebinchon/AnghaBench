
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_rtc_info {scalar_t__ base; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ TEGRA_RTC_REG_SECONDS ;
 struct tegra_rtc_info* dev_get_drvdata (struct device*) ;
 int dev_vdbg (struct device*,char*,int ,...) ;
 int readl (scalar_t__) ;
 int rtc_tm_to_time64 (struct rtc_time*) ;
 int tegra_rtc_wait_while_busy (struct device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int tegra_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 struct tegra_rtc_info *info = dev_get_drvdata(dev);
 u32 sec;
 int ret;


 sec = rtc_tm_to_time64(tm);

 dev_vdbg(dev, "time set to %u, %ptR\n", sec, tm);


 ret = tegra_rtc_wait_while_busy(dev);
 if (!ret)
  writel(sec, info->base + TEGRA_RTC_REG_SECONDS);

 dev_vdbg(dev, "time read back as %d\n",
   readl(info->base + TEGRA_RTC_REG_SECONDS));

 return ret;
}
