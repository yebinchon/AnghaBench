
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rv3028_data {int regmap; } ;
struct rtc_time {int tm_wday; scalar_t__ tm_year; scalar_t__ tm_mon; scalar_t__ tm_mday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;
struct device {int dummy; } ;
typedef int date ;


 size_t RV3028_DAY ;
 size_t RV3028_HOUR ;
 size_t RV3028_MIN ;
 size_t RV3028_MONTH ;
 size_t RV3028_SEC ;
 int RV3028_STATUS ;
 int RV3028_STATUS_PORF ;
 size_t RV3028_WDAY ;
 size_t RV3028_YEAR ;
 int bin2bcd (scalar_t__) ;
 struct rv3028_data* dev_get_drvdata (struct device*) ;
 int regmap_bulk_write (int ,size_t,int*,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int rv3028_set_time(struct device *dev, struct rtc_time *tm)
{
 struct rv3028_data *rv3028 = dev_get_drvdata(dev);
 u8 date[7];
 int ret;

 date[RV3028_SEC] = bin2bcd(tm->tm_sec);
 date[RV3028_MIN] = bin2bcd(tm->tm_min);
 date[RV3028_HOUR] = bin2bcd(tm->tm_hour);
 date[RV3028_WDAY] = 1 << (tm->tm_wday);
 date[RV3028_DAY] = bin2bcd(tm->tm_mday);
 date[RV3028_MONTH] = bin2bcd(tm->tm_mon + 1);
 date[RV3028_YEAR] = bin2bcd(tm->tm_year - 100);





 ret = regmap_bulk_write(rv3028->regmap, RV3028_SEC, date,
    sizeof(date));
 if (ret)
  return ret;

 ret = regmap_update_bits(rv3028->regmap, RV3028_STATUS,
     RV3028_STATUS_PORF, 0);

 return ret;
}
