
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snvs_rtc_data {scalar_t__ clk; scalar_t__ offset; int regmap; int rtc; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int RTC_AF ;
 int RTC_IRQF ;
 scalar_t__ SNVS_LPSR ;
 int SNVS_LPSR_LPTA ;
 int clk_disable (scalar_t__) ;
 int clk_enable (scalar_t__) ;
 struct snvs_rtc_data* dev_get_drvdata (struct device*) ;
 int regmap_read (int ,scalar_t__,int*) ;
 int regmap_write (int ,scalar_t__,int) ;
 int rtc_update_irq (int ,int,int) ;
 int snvs_rtc_alarm_irq_enable (struct device*,int ) ;

__attribute__((used)) static irqreturn_t snvs_rtc_irq_handler(int irq, void *dev_id)
{
 struct device *dev = dev_id;
 struct snvs_rtc_data *data = dev_get_drvdata(dev);
 u32 lpsr;
 u32 events = 0;

 if (data->clk)
  clk_enable(data->clk);

 regmap_read(data->regmap, data->offset + SNVS_LPSR, &lpsr);

 if (lpsr & SNVS_LPSR_LPTA) {
  events |= (RTC_AF | RTC_IRQF);


  snvs_rtc_alarm_irq_enable(dev, 0);

  rtc_update_irq(data->rtc, 1, events);
 }


 regmap_write(data->regmap, data->offset + SNVS_LPSR, lpsr);

 if (data->clk)
  clk_disable(data->clk);

 return events ? IRQ_HANDLED : IRQ_NONE;
}
