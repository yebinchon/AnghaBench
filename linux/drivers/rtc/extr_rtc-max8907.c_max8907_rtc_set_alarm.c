
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc_wkalrm {scalar_t__ enabled; int time; } ;
struct max8907_rtc {int regmap; } ;
struct device {int dummy; } ;


 int MAX8907_REG_ALARM0_CNTL ;
 int MAX8907_REG_ALARM0_SEC ;
 int TIME_NUM ;
 struct max8907_rtc* dev_get_drvdata (struct device*) ;
 int regmap_bulk_write (int ,int ,int *,int) ;
 int regmap_write (int ,int ,int) ;
 int tm_to_regs (int *,int *) ;

__attribute__((used)) static int max8907_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct max8907_rtc *rtc = dev_get_drvdata(dev);
 u8 regs[TIME_NUM];
 int ret;

 tm_to_regs(&alrm->time, regs);


 ret = regmap_write(rtc->regmap, MAX8907_REG_ALARM0_CNTL, 0);
 if (ret < 0)
  return ret;

 ret = regmap_bulk_write(rtc->regmap, MAX8907_REG_ALARM0_SEC, regs,
    TIME_NUM);
 if (ret < 0)
  return ret;

 if (alrm->enabled)
  ret = regmap_write(rtc->regmap, MAX8907_REG_ALARM0_CNTL, 0x77);

 return ret;
}
