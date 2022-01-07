
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wake ;
struct rtc_wkalrm {scalar_t__ enabled; int time; } ;
struct rohm_regmap_dev {int regmap; } ;
struct device {int dummy; } ;
struct bd70528_rtc_wake {int ctrl; int alm_mask; int time; int data; } ;
struct bd70528_rtc_alm {int ctrl; int alm_mask; int time; int data; } ;
struct bd70528_rtc {struct rohm_regmap_dev* mfd; } ;
typedef int alm ;


 int BD70528_MASK_ALM_EN ;
 int BD70528_MASK_WAKE_EN ;
 int BD70528_REG_RTC_ALM_START ;
 int BD70528_REG_RTC_WAKE_START ;
 int dev_err (struct device*,char*) ;
 struct bd70528_rtc* dev_get_drvdata (struct device*) ;
 int regmap_bulk_read (int ,int ,struct bd70528_rtc_wake*,int) ;
 int regmap_bulk_write (int ,int ,struct bd70528_rtc_wake*,int) ;
 int tm2rtc (int *,int *) ;
 int tmday2rtc (int *,int *) ;

__attribute__((used)) static int bd70528_set_alarm(struct device *dev, struct rtc_wkalrm *a)
{
 struct bd70528_rtc_wake wake;
 struct bd70528_rtc_alm alm;
 int ret;
 struct bd70528_rtc *r = dev_get_drvdata(dev);
 struct rohm_regmap_dev *bd70528 = r->mfd;

 ret = regmap_bulk_read(bd70528->regmap, BD70528_REG_RTC_WAKE_START,
          &wake, sizeof(wake));
 if (ret) {
  dev_err(dev, "Failed to read wake regs\n");
  return ret;
 }

 ret = regmap_bulk_read(bd70528->regmap, BD70528_REG_RTC_ALM_START,
          &alm, sizeof(alm));
 if (ret) {
  dev_err(dev, "Failed to read alarm regs\n");
  return ret;
 }

 tm2rtc(&a->time, &alm.data);
 tmday2rtc(&a->time, &wake.time);

 if (a->enabled) {
  alm.alm_mask &= ~BD70528_MASK_ALM_EN;
  wake.ctrl |= BD70528_MASK_WAKE_EN;
 } else {
  alm.alm_mask |= BD70528_MASK_ALM_EN;
  wake.ctrl &= ~BD70528_MASK_WAKE_EN;
 }

 ret = regmap_bulk_write(bd70528->regmap,
    BD70528_REG_RTC_WAKE_START, &wake,
    sizeof(wake));
 if (ret) {
  dev_err(dev, "Failed to set wake time\n");
  return ret;
 }
 ret = regmap_bulk_write(bd70528->regmap, BD70528_REG_RTC_ALM_START,
    &alm, sizeof(alm));
 if (ret)
  dev_err(dev, "Failed to set alarm time\n");

 return ret;
}
