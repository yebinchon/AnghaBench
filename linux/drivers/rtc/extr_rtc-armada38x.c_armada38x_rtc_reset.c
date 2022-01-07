
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct armada38x_rtc {int initialized; TYPE_1__* data; } ;
struct TYPE_2__ {int (* read_rtc_reg ) (struct armada38x_rtc*,int ) ;} ;


 int RTC_CCR ;
 int RTC_CONF_TEST ;
 int RTC_NOMINAL_TIMING ;
 int RTC_STATUS ;
 int RTC_TIME ;
 int SOC_RTC_ALARM1 ;
 int SOC_RTC_ALARM2 ;
 int msleep (int) ;
 int rtc_delayed_write (int,struct armada38x_rtc*,int ) ;
 int stub1 (struct armada38x_rtc*,int ) ;

__attribute__((used)) static void armada38x_rtc_reset(struct armada38x_rtc *rtc)
{
 u32 reg;

 reg = rtc->data->read_rtc_reg(rtc, RTC_CONF_TEST);

 if (reg & 0xff) {
  rtc_delayed_write(0, rtc, RTC_CONF_TEST);
  msleep(500);
  rtc_delayed_write(0, rtc, RTC_TIME);
  rtc_delayed_write(SOC_RTC_ALARM1 | SOC_RTC_ALARM2, rtc,
      RTC_STATUS);
  rtc_delayed_write(RTC_NOMINAL_TIMING, rtc, RTC_CCR);
 }
 rtc->initialized = 1;
}
