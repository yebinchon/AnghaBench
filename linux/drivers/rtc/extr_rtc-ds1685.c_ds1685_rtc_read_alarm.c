
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct rtc_wkalrm {int enabled; int pending; TYPE_1__ time; } ;
struct ds1685_priv {int (* read ) (struct ds1685_priv*,int ) ;} ;
struct device {int dummy; } ;


 int RTC_CTRL_B ;
 int RTC_CTRL_B_AIE ;
 int RTC_CTRL_C ;
 int RTC_CTRL_C_AF ;
 int RTC_HRS_24_BCD_MASK ;
 int RTC_HRS_24_BIN_MASK ;
 int RTC_HRS_ALARM ;
 int RTC_MDAY_ALARM ;
 int RTC_MDAY_BCD_MASK ;
 int RTC_MDAY_BIN_MASK ;
 int RTC_MINS_ALARM ;
 int RTC_MINS_BCD_MASK ;
 int RTC_MINS_BIN_MASK ;
 int RTC_SECS_ALARM ;
 int RTC_SECS_BCD_MASK ;
 int RTC_SECS_BIN_MASK ;
 struct ds1685_priv* dev_get_drvdata (struct device*) ;
 void* ds1685_rtc_bcd2bin (struct ds1685_priv*,int,int ,int ) ;
 int ds1685_rtc_begin_data_access (struct ds1685_priv*) ;
 int ds1685_rtc_check_mday (struct ds1685_priv*,int) ;
 int ds1685_rtc_end_data_access (struct ds1685_priv*) ;
 scalar_t__ likely (int) ;
 int stub1 (struct ds1685_priv*,int ) ;
 int stub2 (struct ds1685_priv*,int ) ;
 int stub3 (struct ds1685_priv*,int ) ;
 int stub4 (struct ds1685_priv*,int ) ;
 int stub5 (struct ds1685_priv*,int ) ;
 int stub6 (struct ds1685_priv*,int ) ;

__attribute__((used)) static int
ds1685_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct ds1685_priv *rtc = dev_get_drvdata(dev);
 u8 seconds, minutes, hours, mday, ctrlb, ctrlc;
 int ret;


 ds1685_rtc_begin_data_access(rtc);
 seconds = rtc->read(rtc, RTC_SECS_ALARM);
 minutes = rtc->read(rtc, RTC_MINS_ALARM);
 hours = rtc->read(rtc, RTC_HRS_ALARM);
 mday = rtc->read(rtc, RTC_MDAY_ALARM);
 ctrlb = rtc->read(rtc, RTC_CTRL_B);
 ctrlc = rtc->read(rtc, RTC_CTRL_C);
 ds1685_rtc_end_data_access(rtc);


 ret = ds1685_rtc_check_mday(rtc, mday);
 if (ret)
  return ret;
 if (likely(seconds < 0xc0))
  alrm->time.tm_sec = ds1685_rtc_bcd2bin(rtc, seconds,
             RTC_SECS_BCD_MASK,
             RTC_SECS_BIN_MASK);

 if (likely(minutes < 0xc0))
  alrm->time.tm_min = ds1685_rtc_bcd2bin(rtc, minutes,
             RTC_MINS_BCD_MASK,
             RTC_MINS_BIN_MASK);

 if (likely(hours < 0xc0))
  alrm->time.tm_hour = ds1685_rtc_bcd2bin(rtc, hours,
       RTC_HRS_24_BCD_MASK,
       RTC_HRS_24_BIN_MASK);


 alrm->time.tm_mday = ds1685_rtc_bcd2bin(rtc, mday, RTC_MDAY_BCD_MASK,
      RTC_MDAY_BIN_MASK);
 alrm->enabled = !!(ctrlb & RTC_CTRL_B_AIE);
 alrm->pending = !!(ctrlc & RTC_CTRL_C_AF);

 return 0;
}
