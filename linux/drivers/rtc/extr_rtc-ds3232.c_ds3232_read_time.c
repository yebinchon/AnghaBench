
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct rtc_time {void* tm_year; void* tm_mon; void* tm_mday; void* tm_wday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct ds3232 {int regmap; } ;
struct device {int dummy; } ;


 int DS3232_REG_SECONDS ;
 void* bcd2bin (unsigned int) ;
 struct ds3232* dev_get_drvdata (struct device*) ;
 int regmap_bulk_read (int ,int ,unsigned int*,int) ;

__attribute__((used)) static int ds3232_read_time(struct device *dev, struct rtc_time *time)
{
 struct ds3232 *ds3232 = dev_get_drvdata(dev);
 int ret;
 u8 buf[7];
 unsigned int year, month, day, hour, minute, second;
 unsigned int week, twelve_hr, am_pm;
 unsigned int century, add_century = 0;

 ret = regmap_bulk_read(ds3232->regmap, DS3232_REG_SECONDS, buf, 7);
 if (ret)
  return ret;

 second = buf[0];
 minute = buf[1];
 hour = buf[2];
 week = buf[3];
 day = buf[4];
 month = buf[5];
 year = buf[6];



 twelve_hr = hour & 0x40;
 am_pm = hour & 0x20;
 century = month & 0x80;



 time->tm_sec = bcd2bin(second);
 time->tm_min = bcd2bin(minute);
 if (twelve_hr) {

  if (am_pm)
   time->tm_hour = bcd2bin(hour & 0x1F) + 12;
  else
   time->tm_hour = bcd2bin(hour & 0x1F);
 } else {
  time->tm_hour = bcd2bin(hour);
 }


 time->tm_wday = bcd2bin(week) - 1;
 time->tm_mday = bcd2bin(day);

 time->tm_mon = bcd2bin(month & 0x7F) - 1;
 if (century)
  add_century = 100;

 time->tm_year = bcd2bin(year) + add_century;

 return 0;
}
