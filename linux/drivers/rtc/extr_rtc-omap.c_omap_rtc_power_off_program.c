
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; } ;
struct omap_rtc {TYPE_1__* type; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* lock ) (struct omap_rtc*) ;int (* unlock ) (struct omap_rtc*) ;} ;


 int OMAP_RTC_ALARM2_DAYS_REG ;
 int OMAP_RTC_ALARM2_HOURS_REG ;
 int OMAP_RTC_ALARM2_MINUTES_REG ;
 int OMAP_RTC_ALARM2_MONTHS_REG ;
 int OMAP_RTC_ALARM2_SECONDS_REG ;
 int OMAP_RTC_ALARM2_YEARS_REG ;
 int OMAP_RTC_INTERRUPTS_IT_ALARM2 ;
 int OMAP_RTC_INTERRUPTS_REG ;
 int OMAP_RTC_PMIC_POWER_EN_EN ;
 int OMAP_RTC_PMIC_REG ;
 int OMAP_RTC_SECONDS_REG ;
 int OMAP_RTC_STATUS_ALARM2 ;
 int OMAP_RTC_STATUS_REG ;
 int bcd2tm (struct rtc_time*) ;
 struct omap_rtc* omap_rtc_power_off_rtc ;
 int omap_rtc_read_time_raw (struct omap_rtc*,struct rtc_time*) ;
 int rtc_read (struct omap_rtc*,int ) ;
 int rtc_readl (struct omap_rtc*,int ) ;
 int rtc_time64_to_tm (unsigned long,struct rtc_time*) ;
 unsigned long rtc_tm_to_time64 (struct rtc_time*) ;
 int rtc_wait_not_busy (struct omap_rtc*) ;
 int rtc_write (struct omap_rtc*,int ,int) ;
 int rtc_writel (struct omap_rtc*,int ,int) ;
 int stub1 (struct omap_rtc*) ;
 int stub2 (struct omap_rtc*) ;
 int tm2bcd (struct rtc_time*) ;

int omap_rtc_power_off_program(struct device *dev)
{
 struct omap_rtc *rtc = omap_rtc_power_off_rtc;
 struct rtc_time tm;
 unsigned long now;
 int seconds;
 u32 val;

 rtc->type->unlock(rtc);

 val = rtc_readl(rtc, OMAP_RTC_PMIC_REG);
 rtc_writel(rtc, OMAP_RTC_PMIC_REG, val | OMAP_RTC_PMIC_POWER_EN_EN);

again:

 rtc_writel(rtc, OMAP_RTC_STATUS_REG, OMAP_RTC_STATUS_ALARM2);


 omap_rtc_read_time_raw(rtc, &tm);
 seconds = tm.tm_sec;
 bcd2tm(&tm);
 now = rtc_tm_to_time64(&tm);
 rtc_time64_to_tm(now + 1, &tm);

 tm2bcd(&tm);

 rtc_wait_not_busy(rtc);

 rtc_write(rtc, OMAP_RTC_ALARM2_SECONDS_REG, tm.tm_sec);
 rtc_write(rtc, OMAP_RTC_ALARM2_MINUTES_REG, tm.tm_min);
 rtc_write(rtc, OMAP_RTC_ALARM2_HOURS_REG, tm.tm_hour);
 rtc_write(rtc, OMAP_RTC_ALARM2_DAYS_REG, tm.tm_mday);
 rtc_write(rtc, OMAP_RTC_ALARM2_MONTHS_REG, tm.tm_mon);
 rtc_write(rtc, OMAP_RTC_ALARM2_YEARS_REG, tm.tm_year);






 val = rtc_read(rtc, OMAP_RTC_INTERRUPTS_REG);
 rtc_writel(rtc, OMAP_RTC_INTERRUPTS_REG,
   val | OMAP_RTC_INTERRUPTS_IT_ALARM2);


 if (rtc_read(rtc, OMAP_RTC_SECONDS_REG) != seconds) {
  val = rtc_read(rtc, OMAP_RTC_STATUS_REG);
  if (!(val & OMAP_RTC_STATUS_ALARM2))
   goto again;
 }

 rtc->type->lock(rtc);

 return 0;
}
