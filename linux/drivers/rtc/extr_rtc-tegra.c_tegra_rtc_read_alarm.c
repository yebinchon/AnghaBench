
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tegra_rtc_info {scalar_t__ base; } ;
struct rtc_wkalrm {int enabled; int pending; int time; } ;
struct device {int dummy; } ;


 scalar_t__ TEGRA_RTC_INTR_STATUS_SEC_ALARM0 ;
 scalar_t__ TEGRA_RTC_REG_INTR_STATUS ;
 scalar_t__ TEGRA_RTC_REG_SECONDS_ALARM0 ;
 struct tegra_rtc_info* dev_get_drvdata (struct device*) ;
 scalar_t__ readl (scalar_t__) ;
 int rtc_time64_to_tm (scalar_t__,int *) ;

__attribute__((used)) static int tegra_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alarm)
{
 struct tegra_rtc_info *info = dev_get_drvdata(dev);
 u32 sec, value;

 sec = readl(info->base + TEGRA_RTC_REG_SECONDS_ALARM0);

 if (sec == 0) {

  alarm->enabled = 0;
 } else {

  alarm->enabled = 1;
  rtc_time64_to_tm(sec, &alarm->time);
 }

 value = readl(info->base + TEGRA_RTC_REG_INTR_STATUS);
 alarm->pending = (value & TEGRA_RTC_INTR_STATUS_SEC_ALARM0) != 0;

 return 0;
}
