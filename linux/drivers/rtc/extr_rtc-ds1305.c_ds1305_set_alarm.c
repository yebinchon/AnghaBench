
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dummy; } ;
struct rtc_time {int tm_hour; int tm_min; int tm_sec; } ;
struct rtc_wkalrm {scalar_t__ enabled; struct rtc_time time; } ;
struct ds1305 {int* ctrl; struct spi_device* spi; int hr12; } ;
struct device {int dummy; } ;
typedef int buf ;


 int DS1305_AEI0 ;
 int DS1305_ALM0 (int) ;
 int DS1305_ALM_DISABLE ;
 int DS1305_ALM_LEN ;
 int DS1305_CONTROL ;
 int DS1305_HOUR ;
 int DS1305_MIN ;
 int DS1305_SEC ;
 int DS1305_WDAY ;
 int DS1305_WRITE ;
 int EDOM ;
 int EINVAL ;
 int bin2bcd (int ) ;
 int dev_dbg (struct device*,char*,char*,int,int,int,int) ;
 struct ds1305* dev_get_drvdata (struct device*) ;
 int ds1305_get_time (struct device*,struct rtc_time*) ;
 int hour2bcd (int ,int ) ;
 int rtc_tm_to_time (struct rtc_time*,unsigned long*) ;
 int spi_write_then_read (struct spi_device*,int*,int,int *,int ) ;

__attribute__((used)) static int ds1305_set_alarm(struct device *dev, struct rtc_wkalrm *alm)
{
 struct ds1305 *ds1305 = dev_get_drvdata(dev);
 struct spi_device *spi = ds1305->spi;
 unsigned long now, later;
 struct rtc_time tm;
 int status;
 u8 buf[1 + DS1305_ALM_LEN];


 status = rtc_tm_to_time(&alm->time, &later);
 if (status < 0)
  return status;


 status = ds1305_get_time(dev, &tm);
 if (status < 0)
  return status;
 status = rtc_tm_to_time(&tm, &now);
 if (status < 0)
  return status;


 if (later <= now)
  return -EINVAL;
 if ((later - now) > 24 * 60 * 60)
  return -EDOM;


 if (ds1305->ctrl[0] & DS1305_AEI0) {
  ds1305->ctrl[0] &= ~DS1305_AEI0;

  buf[0] = DS1305_WRITE | DS1305_CONTROL;
  buf[1] = ds1305->ctrl[0];
  status = spi_write_then_read(ds1305->spi, buf, 2, ((void*)0), 0);
  if (status < 0)
   return status;
 }


 buf[0] = DS1305_WRITE | DS1305_ALM0(DS1305_SEC);
 buf[1 + DS1305_SEC] = bin2bcd(alm->time.tm_sec);
 buf[1 + DS1305_MIN] = bin2bcd(alm->time.tm_min);
 buf[1 + DS1305_HOUR] = hour2bcd(ds1305->hr12, alm->time.tm_hour);
 buf[1 + DS1305_WDAY] = DS1305_ALM_DISABLE;

 dev_dbg(dev, "%s: %02x %02x %02x %02x\n",
  "alm0 write", buf[1 + DS1305_SEC], buf[1 + DS1305_MIN],
  buf[1 + DS1305_HOUR], buf[1 + DS1305_WDAY]);

 status = spi_write_then_read(spi, buf, sizeof(buf), ((void*)0), 0);
 if (status < 0)
  return status;


 if (alm->enabled) {
  ds1305->ctrl[0] |= DS1305_AEI0;

  buf[0] = DS1305_WRITE | DS1305_CONTROL;
  buf[1] = ds1305->ctrl[0];
  status = spi_write_then_read(ds1305->spi, buf, 2, ((void*)0), 0);
 }

 return status;
}
