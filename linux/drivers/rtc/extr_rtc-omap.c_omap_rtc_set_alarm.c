
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; } ;
struct rtc_wkalrm {scalar_t__ enabled; TYPE_2__ time; } ;
struct omap_rtc {TYPE_1__* type; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int (* lock ) (struct omap_rtc*) ;scalar_t__ has_irqwakeen; int (* unlock ) (struct omap_rtc*) ;} ;


 int OMAP_RTC_ALARM_DAYS_REG ;
 int OMAP_RTC_ALARM_HOURS_REG ;
 int OMAP_RTC_ALARM_MINUTES_REG ;
 int OMAP_RTC_ALARM_MONTHS_REG ;
 int OMAP_RTC_ALARM_SECONDS_REG ;
 int OMAP_RTC_ALARM_YEARS_REG ;
 int OMAP_RTC_INTERRUPTS_IT_ALARM ;
 int OMAP_RTC_INTERRUPTS_REG ;
 int OMAP_RTC_IRQWAKEEN ;
 int OMAP_RTC_IRQWAKEEN_ALARM_WAKEEN ;
 struct omap_rtc* dev_get_drvdata (struct device*) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int rtc_read (struct omap_rtc*,int ) ;
 int rtc_wait_not_busy (struct omap_rtc*) ;
 int rtc_write (struct omap_rtc*,int ,int ) ;
 int stub1 (struct omap_rtc*) ;
 int stub2 (struct omap_rtc*) ;
 int tm2bcd (TYPE_2__*) ;

__attribute__((used)) static int omap_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alm)
{
 struct omap_rtc *rtc = dev_get_drvdata(dev);
 u8 reg, irqwake_reg = 0;

 tm2bcd(&alm->time);

 local_irq_disable();
 rtc_wait_not_busy(rtc);

 rtc->type->unlock(rtc);
 rtc_write(rtc, OMAP_RTC_ALARM_YEARS_REG, alm->time.tm_year);
 rtc_write(rtc, OMAP_RTC_ALARM_MONTHS_REG, alm->time.tm_mon);
 rtc_write(rtc, OMAP_RTC_ALARM_DAYS_REG, alm->time.tm_mday);
 rtc_write(rtc, OMAP_RTC_ALARM_HOURS_REG, alm->time.tm_hour);
 rtc_write(rtc, OMAP_RTC_ALARM_MINUTES_REG, alm->time.tm_min);
 rtc_write(rtc, OMAP_RTC_ALARM_SECONDS_REG, alm->time.tm_sec);

 reg = rtc_read(rtc, OMAP_RTC_INTERRUPTS_REG);
 if (rtc->type->has_irqwakeen)
  irqwake_reg = rtc_read(rtc, OMAP_RTC_IRQWAKEEN);

 if (alm->enabled) {
  reg |= OMAP_RTC_INTERRUPTS_IT_ALARM;
  irqwake_reg |= OMAP_RTC_IRQWAKEEN_ALARM_WAKEEN;
 } else {
  reg &= ~OMAP_RTC_INTERRUPTS_IT_ALARM;
  irqwake_reg &= ~OMAP_RTC_IRQWAKEEN_ALARM_WAKEEN;
 }
 rtc_write(rtc, OMAP_RTC_INTERRUPTS_REG, reg);
 if (rtc->type->has_irqwakeen)
  rtc_write(rtc, OMAP_RTC_IRQWAKEEN, irqwake_reg);
 rtc->type->lock(rtc);

 local_irq_enable();

 return 0;
}
