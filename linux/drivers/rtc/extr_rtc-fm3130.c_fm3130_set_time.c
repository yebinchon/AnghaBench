
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; int tm_wday; } ;
struct fm3130 {int data_valid; int * regs; int client; } ;
struct device {int dummy; } ;


 int FM3130_CLOCK_REGS ;
 int FM3130_MODE_NORMAL ;
 int FM3130_MODE_WRITE ;
 size_t FM3130_RTC_DATE ;
 size_t FM3130_RTC_DAY ;
 size_t FM3130_RTC_HOURS ;
 size_t FM3130_RTC_MINUTES ;
 size_t FM3130_RTC_MONTHS ;
 size_t FM3130_RTC_SECONDS ;
 size_t FM3130_RTC_YEARS ;
 int bin2bcd (int) ;
 int dev_dbg (struct device*,char*,char*,int,...) ;
 struct fm3130* dev_get_drvdata (struct device*) ;
 int fm3130_rtc_mode (struct device*,int ) ;
 int i2c_smbus_write_byte_data (int ,size_t,int ) ;

__attribute__((used)) static int fm3130_set_time(struct device *dev, struct rtc_time *t)
{
 struct fm3130 *fm3130 = dev_get_drvdata(dev);
 int tmp, i;
 u8 *buf = fm3130->regs;

 dev_dbg(dev, "%s secs=%d, mins=%d, "
  "hours=%d, mday=%d, mon=%d, year=%d, wday=%d\n",
  "write", t->tm_sec, t->tm_min,
  t->tm_hour, t->tm_mday,
  t->tm_mon, t->tm_year, t->tm_wday);


 buf[FM3130_RTC_SECONDS] = bin2bcd(t->tm_sec);
 buf[FM3130_RTC_MINUTES] = bin2bcd(t->tm_min);
 buf[FM3130_RTC_HOURS] = bin2bcd(t->tm_hour);
 buf[FM3130_RTC_DAY] = bin2bcd(t->tm_wday + 1);
 buf[FM3130_RTC_DATE] = bin2bcd(t->tm_mday);
 buf[FM3130_RTC_MONTHS] = bin2bcd(t->tm_mon + 1);


 tmp = t->tm_year - 100;
 buf[FM3130_RTC_YEARS] = bin2bcd(tmp);

 dev_dbg(dev, "%s: %15ph\n", "write", buf);

 fm3130_rtc_mode(dev, FM3130_MODE_WRITE);


 for (i = 0; i < FM3130_CLOCK_REGS; i++) {
  i2c_smbus_write_byte_data(fm3130->client,
     FM3130_RTC_SECONDS + i,
     fm3130->regs[FM3130_RTC_SECONDS + i]);
 }

 fm3130_rtc_mode(dev, FM3130_MODE_NORMAL);


 if (!fm3130->data_valid)
  fm3130->data_valid = 1;
 return 0;
}
