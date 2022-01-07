
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc_wkalrm {int enabled; int time; } ;
struct max8907_rtc {int regmap; } ;
struct device {int dummy; } ;


 int MAX8907_REG_ALARM0_CNTL ;
 int MAX8907_REG_ALARM0_SEC ;
 int TIME_NUM ;
 struct max8907_rtc* dev_get_drvdata (struct device*) ;
 int regmap_bulk_read (int ,int ,int *,int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regs_to_tm (int *,int *) ;

__attribute__((used)) static int max8907_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct max8907_rtc *rtc = dev_get_drvdata(dev);
 u8 regs[TIME_NUM];
 unsigned int val;
 int ret;

 ret = regmap_bulk_read(rtc->regmap, MAX8907_REG_ALARM0_SEC, regs,
          TIME_NUM);
 if (ret < 0)
  return ret;

 regs_to_tm(regs, &alrm->time);

 ret = regmap_read(rtc->regmap, MAX8907_REG_ALARM0_CNTL, &val);
 if (ret < 0)
  return ret;

 alrm->enabled = !!(val & 0x7f);

 return 0;
}
