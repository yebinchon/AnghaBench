
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_wday; int tm_mday; int tm_mon; int tm_year; } ;
struct ds1343_priv {int map; } ;
struct device {int dummy; } ;


 int DS1343_DATE_REG ;
 int DS1343_DAY_REG ;
 int DS1343_HOURS_REG ;
 int DS1343_MINUTES_REG ;
 int DS1343_MONTH_REG ;
 int DS1343_SECONDS_REG ;
 int DS1343_YEAR_REG ;
 int bin2bcd (int) ;
 struct ds1343_priv* dev_get_drvdata (struct device*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int ds1343_set_time(struct device *dev, struct rtc_time *dt)
{
 struct ds1343_priv *priv = dev_get_drvdata(dev);
 int res;

 res = regmap_write(priv->map, DS1343_SECONDS_REG,
    bin2bcd(dt->tm_sec));
 if (res)
  return res;

 res = regmap_write(priv->map, DS1343_MINUTES_REG,
    bin2bcd(dt->tm_min));
 if (res)
  return res;

 res = regmap_write(priv->map, DS1343_HOURS_REG,
    bin2bcd(dt->tm_hour) & 0x3F);
 if (res)
  return res;

 res = regmap_write(priv->map, DS1343_DAY_REG,
    bin2bcd(dt->tm_wday + 1));
 if (res)
  return res;

 res = regmap_write(priv->map, DS1343_DATE_REG,
    bin2bcd(dt->tm_mday));
 if (res)
  return res;

 res = regmap_write(priv->map, DS1343_MONTH_REG,
    bin2bcd(dt->tm_mon + 1));
 if (res)
  return res;

 dt->tm_year %= 100;

 res = regmap_write(priv->map, DS1343_YEAR_REG,
    bin2bcd(dt->tm_year));
 if (res)
  return res;

 return 0;
}
