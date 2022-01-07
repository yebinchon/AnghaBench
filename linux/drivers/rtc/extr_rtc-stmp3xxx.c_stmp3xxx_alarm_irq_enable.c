
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmp3xxx_rtc_data {scalar_t__ io; } ;
struct device {int dummy; } ;


 scalar_t__ STMP3XXX_RTC_CTRL ;
 int STMP3XXX_RTC_CTRL_ALARM_IRQ_EN ;
 scalar_t__ STMP3XXX_RTC_PERSISTENT0 ;
 int STMP3XXX_RTC_PERSISTENT0_ALARM_EN ;
 int STMP3XXX_RTC_PERSISTENT0_ALARM_WAKE_EN ;
 scalar_t__ STMP_OFFSET_REG_CLR ;
 scalar_t__ STMP_OFFSET_REG_SET ;
 struct stmp3xxx_rtc_data* dev_get_drvdata (struct device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int stmp3xxx_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 struct stmp3xxx_rtc_data *rtc_data = dev_get_drvdata(dev);

 if (enabled) {
  writel(STMP3XXX_RTC_PERSISTENT0_ALARM_EN |
    STMP3XXX_RTC_PERSISTENT0_ALARM_WAKE_EN,
   rtc_data->io + STMP3XXX_RTC_PERSISTENT0 +
    STMP_OFFSET_REG_SET);
  writel(STMP3XXX_RTC_CTRL_ALARM_IRQ_EN,
   rtc_data->io + STMP3XXX_RTC_CTRL + STMP_OFFSET_REG_SET);
 } else {
  writel(STMP3XXX_RTC_PERSISTENT0_ALARM_EN |
    STMP3XXX_RTC_PERSISTENT0_ALARM_WAKE_EN,
   rtc_data->io + STMP3XXX_RTC_PERSISTENT0 +
    STMP_OFFSET_REG_CLR);
  writel(STMP3XXX_RTC_CTRL_ALARM_IRQ_EN,
   rtc_data->io + STMP3XXX_RTC_CTRL + STMP_OFFSET_REG_CLR);
 }
 return 0;
}
