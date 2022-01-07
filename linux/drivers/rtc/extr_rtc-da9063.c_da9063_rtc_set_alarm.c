
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc_wkalrm {scalar_t__ enabled; int time; } ;
struct device {int dummy; } ;
struct da9063_compatible_rtc_regmap {size_t rtc_data_start; int rtc_alarm_len; int rtc_alarm_secs_reg; } ;
struct da9063_compatible_rtc {int alarm_time; int regmap; struct da9063_compatible_rtc_regmap* config; } ;


 int RTC_DATA_LEN ;
 int da9063_data_to_tm (int *,int *,struct da9063_compatible_rtc*) ;
 int da9063_rtc_start_alarm (struct device*) ;
 int da9063_rtc_stop_alarm (struct device*) ;
 int da9063_tm_to_data (int *,int *,struct da9063_compatible_rtc*) ;
 int dev_err (struct device*,char*,int) ;
 struct da9063_compatible_rtc* dev_get_drvdata (struct device*) ;
 int regmap_bulk_write (int ,int ,int *,int ) ;

__attribute__((used)) static int da9063_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct da9063_compatible_rtc *rtc = dev_get_drvdata(dev);
 const struct da9063_compatible_rtc_regmap *config = rtc->config;
 u8 data[RTC_DATA_LEN];
 int ret;

 da9063_tm_to_data(&alrm->time, data, rtc);

 ret = da9063_rtc_stop_alarm(dev);
 if (ret < 0) {
  dev_err(dev, "Failed to stop alarm: %d\n", ret);
  return ret;
 }

 ret = regmap_bulk_write(rtc->regmap,
    config->rtc_alarm_secs_reg,
    &data[config->rtc_data_start],
    config->rtc_alarm_len);
 if (ret < 0) {
  dev_err(dev, "Failed to write alarm: %d\n", ret);
  return ret;
 }

 da9063_data_to_tm(data, &rtc->alarm_time, rtc);

 if (alrm->enabled) {
  ret = da9063_rtc_start_alarm(dev);
  if (ret < 0) {
   dev_err(dev, "Failed to start alarm: %d\n", ret);
   return ret;
  }
 }

 return ret;
}
