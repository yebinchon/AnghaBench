
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct rtc_wkalrm {int enabled; struct rtc_time time; } ;
struct device {int dummy; } ;
struct da9052_rtc {int dummy; } ;


 int da9052_read_alarm (struct da9052_rtc*,struct rtc_time*) ;
 int da9052_rtc_get_alarm_status (struct da9052_rtc*) ;
 struct da9052_rtc* dev_get_drvdata (struct device*) ;
 int rtc_err (struct da9052_rtc*,char*,int) ;

__attribute__((used)) static int da9052_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 int ret;
 struct rtc_time *tm = &alrm->time;
 struct da9052_rtc *rtc = dev_get_drvdata(dev);

 ret = da9052_read_alarm(rtc, tm);
 if (ret < 0) {
  rtc_err(rtc, "failed to read RTC alarm: %d\n", ret);
  return ret;
 }

 alrm->enabled = da9052_rtc_get_alarm_status(rtc);
 return 0;
}
