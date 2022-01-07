
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_wday; int tm_mday; int tm_mon; int tm_year; } ;
struct ds3232 {int regmap; } ;
struct device {int dummy; } ;


 int DS3232_REG_SECONDS ;
 int bin2bcd (int) ;
 struct ds3232* dev_get_drvdata (struct device*) ;
 int regmap_bulk_write (int ,int ,int*,int) ;

__attribute__((used)) static int ds3232_set_time(struct device *dev, struct rtc_time *time)
{
 struct ds3232 *ds3232 = dev_get_drvdata(dev);
 u8 buf[7];



 buf[0] = bin2bcd(time->tm_sec);
 buf[1] = bin2bcd(time->tm_min);
 buf[2] = bin2bcd(time->tm_hour);

 buf[3] = bin2bcd(time->tm_wday + 1);
 buf[4] = bin2bcd(time->tm_mday);

 buf[5] = bin2bcd(time->tm_mon + 1);
 if (time->tm_year >= 100) {
  buf[5] |= 0x80;
  buf[6] = bin2bcd(time->tm_year - 100);
 } else {
  buf[6] = bin2bcd(time->tm_year);
 }

 return regmap_bulk_write(ds3232->regmap, DS3232_REG_SECONDS, buf, 7);
}
