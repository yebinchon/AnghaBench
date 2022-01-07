
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtc_time {scalar_t__ tm_mon; int tm_wday; int tm_year; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct rtc_wkalrm {int enabled; struct rtc_time time; } ;
struct fm3130 {int* regs; TYPE_1__* client; int * msg; int alarm_valid; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int adapter; } ;


 int EIO ;
 size_t FM3130_ALARM_DATE ;
 size_t FM3130_ALARM_HOURS ;
 size_t FM3130_ALARM_MINUTES ;
 size_t FM3130_ALARM_MONTHS ;
 size_t FM3130_ALARM_SECONDS ;
 size_t FM3130_RTC_CONTROL ;
 int FM3130_RTC_CONTROL_BIT_AEN ;
 int FM3130_RTC_CONTROL_BIT_CAL ;
 void* bcd2bin (int) ;
 int dev_dbg (struct device*,char*,...) ;
 int dev_err (struct device*,char*,char*,int) ;
 struct fm3130* dev_get_drvdata (struct device*) ;
 int i2c_smbus_read_byte_data (TYPE_1__*,size_t) ;
 int i2c_transfer (int ,int *,int) ;

__attribute__((used)) static int fm3130_read_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct fm3130 *fm3130 = dev_get_drvdata(dev);
 int tmp;
 struct rtc_time *tm = &alrm->time;

 if (!fm3130->alarm_valid) {






  return -EIO;
 }


 tmp = i2c_transfer(fm3130->client->adapter, &fm3130->msg[2], 2);
 if (tmp != 2) {
  dev_err(dev, "%s error %d\n", "read", tmp);
  return -EIO;
 }
 dev_dbg(dev, "alarm read %02x %02x %02x %02x %02x\n",
   fm3130->regs[FM3130_ALARM_SECONDS],
   fm3130->regs[FM3130_ALARM_MINUTES],
   fm3130->regs[FM3130_ALARM_HOURS],
   fm3130->regs[FM3130_ALARM_DATE],
   fm3130->regs[FM3130_ALARM_MONTHS]);

 tm->tm_sec = bcd2bin(fm3130->regs[FM3130_ALARM_SECONDS] & 0x7F);
 tm->tm_min = bcd2bin(fm3130->regs[FM3130_ALARM_MINUTES] & 0x7F);
 tm->tm_hour = bcd2bin(fm3130->regs[FM3130_ALARM_HOURS] & 0x3F);
 tm->tm_mday = bcd2bin(fm3130->regs[FM3130_ALARM_DATE] & 0x3F);
 tm->tm_mon = bcd2bin(fm3130->regs[FM3130_ALARM_MONTHS] & 0x1F);

 if (tm->tm_mon > 0)
  tm->tm_mon -= 1;

 dev_dbg(dev, "%s secs=%d, mins=%d, "
  "hours=%d, mday=%d, mon=%d, year=%d, wday=%d\n",
  "read alarm", tm->tm_sec, tm->tm_min,
  tm->tm_hour, tm->tm_mday,
  tm->tm_mon, tm->tm_year, tm->tm_wday);


 fm3130->regs[FM3130_RTC_CONTROL] =
  i2c_smbus_read_byte_data(fm3130->client, FM3130_RTC_CONTROL);

 if ((fm3130->regs[FM3130_RTC_CONTROL] & FM3130_RTC_CONTROL_BIT_AEN) &&
  (~fm3130->regs[FM3130_RTC_CONTROL] &
   FM3130_RTC_CONTROL_BIT_CAL)) {
  alrm->enabled = 1;
 }

 return 0;
}
