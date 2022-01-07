
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct omap_rtc {int dummy; } ;
struct device {int dummy; } ;


 int bcd2tm (struct rtc_time*) ;
 struct omap_rtc* dev_get_drvdata (struct device*) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int omap_rtc_read_time_raw (struct omap_rtc*,struct rtc_time*) ;
 int rtc_wait_not_busy (struct omap_rtc*) ;

__attribute__((used)) static int omap_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 struct omap_rtc *rtc = dev_get_drvdata(dev);


 local_irq_disable();
 rtc_wait_not_busy(rtc);
 omap_rtc_read_time_raw(rtc, tm);
 local_irq_enable();

 bcd2tm(tm);

 return 0;
}
