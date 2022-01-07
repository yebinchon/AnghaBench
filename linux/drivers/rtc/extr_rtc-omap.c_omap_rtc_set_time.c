
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; } ;
struct omap_rtc {TYPE_1__* type; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* lock ) (struct omap_rtc*) ;int (* unlock ) (struct omap_rtc*) ;} ;


 int OMAP_RTC_DAYS_REG ;
 int OMAP_RTC_HOURS_REG ;
 int OMAP_RTC_MINUTES_REG ;
 int OMAP_RTC_MONTHS_REG ;
 int OMAP_RTC_SECONDS_REG ;
 int OMAP_RTC_YEARS_REG ;
 struct omap_rtc* dev_get_drvdata (struct device*) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int rtc_wait_not_busy (struct omap_rtc*) ;
 int rtc_write (struct omap_rtc*,int ,int ) ;
 int stub1 (struct omap_rtc*) ;
 int stub2 (struct omap_rtc*) ;
 int tm2bcd (struct rtc_time*) ;

__attribute__((used)) static int omap_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 struct omap_rtc *rtc = dev_get_drvdata(dev);

 tm2bcd(tm);

 local_irq_disable();
 rtc_wait_not_busy(rtc);

 rtc->type->unlock(rtc);
 rtc_write(rtc, OMAP_RTC_YEARS_REG, tm->tm_year);
 rtc_write(rtc, OMAP_RTC_MONTHS_REG, tm->tm_mon);
 rtc_write(rtc, OMAP_RTC_DAYS_REG, tm->tm_mday);
 rtc_write(rtc, OMAP_RTC_HOURS_REG, tm->tm_hour);
 rtc_write(rtc, OMAP_RTC_MINUTES_REG, tm->tm_min);
 rtc_write(rtc, OMAP_RTC_SECONDS_REG, tm->tm_sec);
 rtc->type->lock(rtc);

 local_irq_enable();

 return 0;
}
