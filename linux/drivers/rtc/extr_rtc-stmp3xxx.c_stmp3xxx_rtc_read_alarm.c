
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmp3xxx_rtc_data {scalar_t__ io; } ;
struct rtc_wkalrm {int time; } ;
struct device {int dummy; } ;


 scalar_t__ STMP3XXX_RTC_ALARM ;
 struct stmp3xxx_rtc_data* dev_get_drvdata (struct device*) ;
 int readl (scalar_t__) ;
 int rtc_time64_to_tm (int ,int *) ;

__attribute__((used)) static int stmp3xxx_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alm)
{
 struct stmp3xxx_rtc_data *rtc_data = dev_get_drvdata(dev);

 rtc_time64_to_tm(readl(rtc_data->io + STMP3XXX_RTC_ALARM), &alm->time);
 return 0;
}
