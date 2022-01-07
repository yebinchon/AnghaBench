
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc_time {int dummy; } ;
struct max8907_rtc {int regmap; } ;
struct device {int dummy; } ;


 int MAX8907_REG_RTC_SEC ;
 int TIME_NUM ;
 struct max8907_rtc* dev_get_drvdata (struct device*) ;
 int regmap_bulk_read (int ,int ,int *,int) ;
 int regs_to_tm (int *,struct rtc_time*) ;

__attribute__((used)) static int max8907_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 struct max8907_rtc *rtc = dev_get_drvdata(dev);
 u8 regs[TIME_NUM];
 int ret;

 ret = regmap_bulk_read(rtc->regmap, MAX8907_REG_RTC_SEC, regs,
          TIME_NUM);
 if (ret < 0)
  return ret;

 regs_to_tm(regs, tm);

 return 0;
}
