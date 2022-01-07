
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmp3xxx_rtc_data {scalar_t__ io; } ;
struct rtc_wkalrm {int enabled; int time; } ;
struct device {int dummy; } ;


 scalar_t__ STMP3XXX_RTC_ALARM ;
 struct stmp3xxx_rtc_data* dev_get_drvdata (struct device*) ;
 int rtc_tm_to_time64 (int *) ;
 int stmp3xxx_alarm_irq_enable (struct device*,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int stmp3xxx_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alm)
{
 struct stmp3xxx_rtc_data *rtc_data = dev_get_drvdata(dev);

 writel(rtc_tm_to_time64(&alm->time), rtc_data->io + STMP3XXX_RTC_ALARM);

 stmp3xxx_alarm_irq_enable(dev, alm->enabled);

 return 0;
}
