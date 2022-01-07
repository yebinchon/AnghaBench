
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
 int bd70528_disable_rtc_based_timers (struct bd70528_rtc*,int*) ;
 int bd70528_re_enable_rtc_based_timers (struct bd70528_rtc*,int) ;
 int dev_err (struct device*,char*) ;
 struct bd70528_rtc* dev_get_drvdata (struct device*) ;
 int regmap_bulk_read (int ,int ,struct bd70528_rtc_data*,int) ;
 int regmap_bulk_write (int ,int ,struct bd70528_rtc_data*,int) ;
 int tm2rtc (struct rtc_time*,struct bd70528_rtc_data*) ;

__attribute__((used)) static int bd70528_set_time_locked(struct device *dev, struct rtc_time *t)
{
 int ret, tmpret, old_states;
 struct bd70528_rtc_data rtc_data;
 struct bd70528_rtc *r = dev_get_drvdata(dev);
 struct rohm_regmap_dev *bd70528 = r->mfd;

 ret = bd70528_disable_rtc_based_timers(r, &old_states);
 if (ret)
  return ret;

 tmpret = regmap_bulk_read(bd70528->regmap,
      BD70528_REG_RTC_START, &rtc_data,
      sizeof(rtc_data));
 if (tmpret) {
  dev_err(dev, "Failed to read RTC time registers\n");
  goto renable_out;
 }
 tm2rtc(t, &rtc_data);

 tmpret = regmap_bulk_write(bd70528->regmap,
       BD70528_REG_RTC_START, &rtc_data,
       sizeof(rtc_data));
 if (tmpret) {
  dev_err(dev, "Failed to set RTC time\n");
  goto renable_out;
 }

renable_out:
 ret = bd70528_re_enable_rtc_based_timers(r, old_states);
 if (tmpret)
  ret = tmpret;

 return ret;
}
