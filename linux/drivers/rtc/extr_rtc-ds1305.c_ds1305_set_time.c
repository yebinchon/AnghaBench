
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc_time {int tm_wday; scalar_t__ tm_year; scalar_t__ tm_mon; scalar_t__ tm_mday; int tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;
struct ds1305 {int spi; int hr12; } ;
struct device {int dummy; } ;
typedef int buf ;


 int DS1305_RTC_LEN ;
 int DS1305_SEC ;
 int DS1305_WRITE ;
 void* bin2bcd (scalar_t__) ;
 int dev_dbg (struct device*,char*,char*,int *,int *) ;
 struct ds1305* dev_get_drvdata (struct device*) ;
 int dev_vdbg (struct device*,char*,char*,scalar_t__,scalar_t__,int ,scalar_t__,scalar_t__,scalar_t__,int) ;
 int hour2bcd (int ,int ) ;
 int spi_write_then_read (int ,int *,int,int *,int ) ;

__attribute__((used)) static int ds1305_set_time(struct device *dev, struct rtc_time *time)
{
 struct ds1305 *ds1305 = dev_get_drvdata(dev);
 u8 buf[1 + DS1305_RTC_LEN];
 u8 *bp = buf;

 dev_vdbg(dev, "%s secs=%d, mins=%d, "
  "hours=%d, mday=%d, mon=%d, year=%d, wday=%d\n",
  "write", time->tm_sec, time->tm_min,
  time->tm_hour, time->tm_mday,
  time->tm_mon, time->tm_year, time->tm_wday);


 *bp++ = DS1305_WRITE | DS1305_SEC;

 *bp++ = bin2bcd(time->tm_sec);
 *bp++ = bin2bcd(time->tm_min);
 *bp++ = hour2bcd(ds1305->hr12, time->tm_hour);
 *bp++ = (time->tm_wday < 7) ? (time->tm_wday + 1) : 1;
 *bp++ = bin2bcd(time->tm_mday);
 *bp++ = bin2bcd(time->tm_mon + 1);
 *bp++ = bin2bcd(time->tm_year - 100);

 dev_dbg(dev, "%s: %3ph, %4ph\n", "write", &buf[1], &buf[4]);


 return spi_write_then_read(ds1305->spi, buf, sizeof(buf),
   ((void*)0), 0);
}
