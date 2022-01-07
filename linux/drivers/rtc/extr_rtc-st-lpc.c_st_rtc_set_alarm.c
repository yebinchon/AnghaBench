
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_rtc {unsigned long long clkrate; int alarm; } ;
struct rtc_time {int dummy; } ;
struct rtc_wkalrm {int enabled; struct rtc_time time; } ;
struct device {int dummy; } ;


 struct st_rtc* dev_get_drvdata (struct device*) ;
 int memcpy (int *,struct rtc_wkalrm*,int) ;
 unsigned long long rtc_tm_to_time64 (struct rtc_time*) ;
 int st_rtc_alarm_irq_enable (struct device*,int ) ;
 int st_rtc_read_time (struct device*,struct rtc_time*) ;
 int st_rtc_set_hw_alarm (struct st_rtc*,unsigned long long,unsigned long long) ;

__attribute__((used)) static int st_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *t)
{
 struct st_rtc *rtc = dev_get_drvdata(dev);
 struct rtc_time now;
 unsigned long long now_secs;
 unsigned long long alarm_secs;
 unsigned long long lpa;

 st_rtc_read_time(dev, &now);
 now_secs = rtc_tm_to_time64(&now);
 alarm_secs = rtc_tm_to_time64(&t->time);

 memcpy(&rtc->alarm, t, sizeof(struct rtc_wkalrm));


 alarm_secs -= now_secs;
 lpa = (unsigned long long)alarm_secs * rtc->clkrate;

 st_rtc_set_hw_alarm(rtc, lpa >> 32, lpa);
 st_rtc_alarm_irq_enable(dev, t->enabled);

 return 0;
}
