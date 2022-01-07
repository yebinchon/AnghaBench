
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int tm_mon; int tm_year; int tm_wday; int tm_yday; int tm_isdst; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
struct rtc_wkalrm {scalar_t__ enabled; TYPE_1__ time; } ;
struct ds1685_priv {int (* read ) (struct ds1685_priv*,int ) ;int (* write ) (struct ds1685_priv*,int ,int) ;scalar_t__ bcd_mode; } ;
struct device {int dummy; } ;


 int RTC_CTRL_B ;
 int RTC_CTRL_B_AIE ;
 int RTC_CTRL_B_DM ;
 int RTC_CTRL_C ;
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
 int ds1685_rtc_begin_data_access (struct ds1685_priv*) ;
 int ds1685_rtc_bin2bcd (struct ds1685_priv*,int ,int ,int ) ;
 int ds1685_rtc_check_mday (struct ds1685_priv*,int) ;
 int ds1685_rtc_end_data_access (struct ds1685_priv*) ;
 int stub1 (struct ds1685_priv*,int ) ;
 int stub10 (struct ds1685_priv*,int ) ;
 int stub11 (struct ds1685_priv*,int ,int) ;
 int stub2 (struct ds1685_priv*,int ,int) ;
 int stub3 (struct ds1685_priv*,int ) ;
 int stub4 (struct ds1685_priv*,int ) ;
 int stub5 (struct ds1685_priv*,int ,int) ;
 int stub6 (struct ds1685_priv*,int ,int) ;
 int stub7 (struct ds1685_priv*,int ,int) ;
 int stub8 (struct ds1685_priv*,int ,int) ;
 int stub9 (struct ds1685_priv*,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
ds1685_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct ds1685_priv *rtc = dev_get_drvdata(dev);
 u8 ctrlb, seconds, minutes, hours, mday;
 int ret;


 seconds = ds1685_rtc_bin2bcd(rtc, alrm->time.tm_sec,
         RTC_SECS_BIN_MASK,
         RTC_SECS_BCD_MASK);
 minutes = ds1685_rtc_bin2bcd(rtc, alrm->time.tm_min,
         RTC_MINS_BIN_MASK,
         RTC_MINS_BCD_MASK);
 hours = ds1685_rtc_bin2bcd(rtc, alrm->time.tm_hour,
         RTC_HRS_24_BIN_MASK,
         RTC_HRS_24_BCD_MASK);
 mday = ds1685_rtc_bin2bcd(rtc, alrm->time.tm_mday,
         RTC_MDAY_BIN_MASK,
         RTC_MDAY_BCD_MASK);


 ret = ds1685_rtc_check_mday(rtc, mday);
 if (ret)
  return ret;
 if (unlikely(seconds >= 0xc0))
  seconds = 0xff;

 if (unlikely(minutes >= 0xc0))
  minutes = 0xff;

 if (unlikely(hours >= 0xc0))
  hours = 0xff;

 alrm->time.tm_mon = -1;
 alrm->time.tm_year = -1;
 alrm->time.tm_wday = -1;
 alrm->time.tm_yday = -1;
 alrm->time.tm_isdst = -1;


 ds1685_rtc_begin_data_access(rtc);
 ctrlb = rtc->read(rtc, RTC_CTRL_B);
 rtc->write(rtc, RTC_CTRL_B, (ctrlb & ~(RTC_CTRL_B_AIE)));


 rtc->read(rtc, RTC_CTRL_C);





 ctrlb = rtc->read(rtc, RTC_CTRL_B);
 if (rtc->bcd_mode)
  ctrlb &= ~(RTC_CTRL_B_DM);
 else
  ctrlb |= RTC_CTRL_B_DM;
 rtc->write(rtc, RTC_CTRL_B, ctrlb);
 rtc->write(rtc, RTC_SECS_ALARM, seconds);
 rtc->write(rtc, RTC_MINS_ALARM, minutes);
 rtc->write(rtc, RTC_HRS_ALARM, hours);
 rtc->write(rtc, RTC_MDAY_ALARM, mday);


 if (alrm->enabled) {
  ctrlb = rtc->read(rtc, RTC_CTRL_B);
  ctrlb |= RTC_CTRL_B_AIE;
  rtc->write(rtc, RTC_CTRL_B, ctrlb);
 }


 ds1685_rtc_end_data_access(rtc);

 return 0;
}
