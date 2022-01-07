
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf85063 {int regmap; int rtc; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned int PCF85063_CTRL2_AF ;
 unsigned int PCF85063_CTRL2_AIE ;
 int PCF85063_REG_CTRL2 ;
 int RTC_AF ;
 int RTC_IRQF ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,unsigned int,int ) ;
 int rtc_update_irq (int ,int,int) ;

__attribute__((used)) static irqreturn_t pcf85063_rtc_handle_irq(int irq, void *dev_id)
{
 struct pcf85063 *pcf85063 = dev_id;
 unsigned int val;
 int err;

 err = regmap_read(pcf85063->regmap, PCF85063_REG_CTRL2, &val);
 if (err)
  return IRQ_NONE;

 if (val & PCF85063_CTRL2_AF) {
  rtc_update_irq(pcf85063->rtc, 1, RTC_IRQF | RTC_AF);
  regmap_update_bits(pcf85063->regmap, PCF85063_REG_CTRL2,
       PCF85063_CTRL2_AIE | PCF85063_CTRL2_AF,
       0);
  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}
