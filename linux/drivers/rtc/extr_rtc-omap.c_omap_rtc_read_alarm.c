
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {void* tm_year; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct rtc_wkalrm {int enabled; TYPE_1__ time; } ;
struct omap_rtc {int dummy; } ;
struct device {int dummy; } ;


 int OMAP_RTC_ALARM_DAYS_REG ;
 int OMAP_RTC_ALARM_HOURS_REG ;
 int OMAP_RTC_ALARM_MINUTES_REG ;
 int OMAP_RTC_ALARM_MONTHS_REG ;
 int OMAP_RTC_ALARM_SECONDS_REG ;
 int OMAP_RTC_ALARM_YEARS_REG ;
 int OMAP_RTC_INTERRUPTS_IT_ALARM ;
 int OMAP_RTC_INTERRUPTS_REG ;
 int bcd2tm (TYPE_1__*) ;
 struct omap_rtc* dev_get_drvdata (struct device*) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 void* rtc_read (struct omap_rtc*,int ) ;
 int rtc_wait_not_busy (struct omap_rtc*) ;

__attribute__((used)) static int omap_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alm)
{
 struct omap_rtc *rtc = dev_get_drvdata(dev);
 u8 interrupts;

 local_irq_disable();
 rtc_wait_not_busy(rtc);

 alm->time.tm_sec = rtc_read(rtc, OMAP_RTC_ALARM_SECONDS_REG);
 alm->time.tm_min = rtc_read(rtc, OMAP_RTC_ALARM_MINUTES_REG);
 alm->time.tm_hour = rtc_read(rtc, OMAP_RTC_ALARM_HOURS_REG);
 alm->time.tm_mday = rtc_read(rtc, OMAP_RTC_ALARM_DAYS_REG);
 alm->time.tm_mon = rtc_read(rtc, OMAP_RTC_ALARM_MONTHS_REG);
 alm->time.tm_year = rtc_read(rtc, OMAP_RTC_ALARM_YEARS_REG);

 local_irq_enable();

 bcd2tm(&alm->time);

 interrupts = rtc_read(rtc, OMAP_RTC_INTERRUPTS_REG);
 alm->enabled = !!(interrupts & OMAP_RTC_INTERRUPTS_IT_ALARM);

 return 0;
}
