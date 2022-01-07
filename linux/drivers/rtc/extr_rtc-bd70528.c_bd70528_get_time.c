
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct rohm_regmap_dev {int regmap; } ;
struct device {int dummy; } ;
struct bd70528_rtc_data {int dummy; } ;
struct bd70528_rtc {struct rohm_regmap_dev* mfd; } ;
typedef int rtc_data ;


 int BD70528_REG_RTC_START ;
 int dev_err (struct device*,char*,int) ;
 struct bd70528_rtc* dev_get_drvdata (struct device*) ;
 int regmap_bulk_read (int ,int ,struct bd70528_rtc_data*,int) ;
 int rtc2tm (struct bd70528_rtc_data*,struct rtc_time*) ;

__attribute__((used)) static int bd70528_get_time(struct device *dev, struct rtc_time *t)
{
 struct bd70528_rtc *r = dev_get_drvdata(dev);
 struct rohm_regmap_dev *bd70528 = r->mfd;
 struct bd70528_rtc_data rtc_data;
 int ret;


 ret = regmap_bulk_read(bd70528->regmap,
          BD70528_REG_RTC_START, &rtc_data,
          sizeof(rtc_data));
 if (ret) {
  dev_err(dev, "Failed to read RTC time (err %d)\n", ret);
  return ret;
 }

 rtc2tm(&rtc_data, t);

 return 0;
}
