
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9063_compatible_rtc_regmap {int rtc_alarm_on_mask; int rtc_alarm_year_reg; } ;
struct da9063_compatible_rtc {int rtc_sync; int rtc_dev; int regmap; struct da9063_compatible_rtc_regmap* config; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int RTC_AF ;
 int RTC_IRQF ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int rtc_update_irq (int ,int,int) ;

__attribute__((used)) static irqreturn_t da9063_alarm_event(int irq, void *data)
{
 struct da9063_compatible_rtc *rtc = data;
 const struct da9063_compatible_rtc_regmap *config = rtc->config;

 regmap_update_bits(rtc->regmap,
      config->rtc_alarm_year_reg,
      config->rtc_alarm_on_mask,
      0);

 rtc->rtc_sync = 1;
 rtc_update_irq(rtc->rtc_dev, 1, RTC_IRQF | RTC_AF);

 return IRQ_HANDLED;
}
