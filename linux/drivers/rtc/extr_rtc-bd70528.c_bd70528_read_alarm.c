
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tm_mday; int tm_mon; int tm_year; } ;
struct rtc_wkalrm {int enabled; scalar_t__ pending; TYPE_1__ time; } ;
struct rohm_regmap_dev {int regmap; } ;
struct device {int dummy; } ;
struct bd70528_rtc_alm {int alm_mask; int data; } ;
struct bd70528_rtc {struct rohm_regmap_dev* mfd; } ;
typedef int alm ;


 int BD70528_MASK_ALM_EN ;
 int BD70528_REG_RTC_ALM_START ;
 int dev_err (struct device*,char*) ;
 struct bd70528_rtc* dev_get_drvdata (struct device*) ;
 int regmap_bulk_read (int ,int ,struct bd70528_rtc_alm*,int) ;
 int rtc2tm (int *,TYPE_1__*) ;

__attribute__((used)) static int bd70528_read_alarm(struct device *dev, struct rtc_wkalrm *a)
{
 struct bd70528_rtc_alm alm;
 int ret;
 struct bd70528_rtc *r = dev_get_drvdata(dev);
 struct rohm_regmap_dev *bd70528 = r->mfd;

 ret = regmap_bulk_read(bd70528->regmap, BD70528_REG_RTC_ALM_START,
          &alm, sizeof(alm));
 if (ret) {
  dev_err(dev, "Failed to read alarm regs\n");
  return ret;
 }

 rtc2tm(&alm.data, &a->time);
 a->time.tm_mday = -1;
 a->time.tm_mon = -1;
 a->time.tm_year = -1;
 a->enabled = !(alm.alm_mask & BD70528_MASK_ALM_EN);
 a->pending = 0;

 return 0;
}
