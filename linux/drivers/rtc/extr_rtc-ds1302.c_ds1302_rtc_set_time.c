
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dummy; } ;
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_wday; int tm_year; } ;
struct device {int dummy; } ;
typedef int buf ;


 int RTC_ADDR_CTRL ;
 int RTC_CLCK_BURST ;
 int RTC_CLCK_LEN ;
 int RTC_CMD_WRITE ;
 int RTC_CMD_WRITE_DISABLE ;
 int RTC_CMD_WRITE_ENABLE ;
 void* bin2bcd (int) ;
 struct spi_device* dev_get_drvdata (struct device*) ;
 int spi_write_then_read (struct spi_device*,int *,int,int *,int ) ;

__attribute__((used)) static int ds1302_rtc_set_time(struct device *dev, struct rtc_time *time)
{
 struct spi_device *spi = dev_get_drvdata(dev);
 u8 buf[1 + RTC_CLCK_LEN];
 u8 *bp;
 int status;


 bp = buf;
 *bp++ = RTC_ADDR_CTRL << 1 | RTC_CMD_WRITE;
 *bp++ = RTC_CMD_WRITE_ENABLE;

 status = spi_write_then_read(spi, buf, 2,
   ((void*)0), 0);
 if (status)
  return status;


 bp = buf;
 *bp++ = RTC_CLCK_BURST << 1 | RTC_CMD_WRITE;

 *bp++ = bin2bcd(time->tm_sec);
 *bp++ = bin2bcd(time->tm_min);
 *bp++ = bin2bcd(time->tm_hour);
 *bp++ = bin2bcd(time->tm_mday);
 *bp++ = bin2bcd(time->tm_mon + 1);
 *bp++ = time->tm_wday + 1;
 *bp++ = bin2bcd(time->tm_year % 100);
 *bp++ = RTC_CMD_WRITE_DISABLE;


 return spi_write_then_read(spi, buf, sizeof(buf),
   ((void*)0), 0);
}
