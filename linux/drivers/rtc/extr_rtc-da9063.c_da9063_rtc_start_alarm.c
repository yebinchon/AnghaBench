
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct da9063_compatible_rtc_regmap {int rtc_alarm_on_mask; int rtc_alarm_year_reg; } ;
struct da9063_compatible_rtc {int regmap; struct da9063_compatible_rtc_regmap* config; } ;


 struct da9063_compatible_rtc* dev_get_drvdata (struct device*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int da9063_rtc_start_alarm(struct device *dev)
{
 struct da9063_compatible_rtc *rtc = dev_get_drvdata(dev);
 const struct da9063_compatible_rtc_regmap *config = rtc->config;

 return regmap_update_bits(rtc->regmap,
      config->rtc_alarm_year_reg,
      config->rtc_alarm_on_mask,
      config->rtc_alarm_on_mask);
}
