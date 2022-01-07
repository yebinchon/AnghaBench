
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
 int regmap_bulk_write (int ,int ,int *,int) ;
 int tm_to_regs (struct rtc_time*,int *) ;

__attribute__((used)) static int max8907_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 struct max8907_rtc *rtc = dev_get_drvdata(dev);
 u8 regs[TIME_NUM];

 tm_to_regs(tm, regs);

 return regmap_bulk_write(rtc->regmap, MAX8907_REG_RTC_SEC, regs,
     TIME_NUM);
}
