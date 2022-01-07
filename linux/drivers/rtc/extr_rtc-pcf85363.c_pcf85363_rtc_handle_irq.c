
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf85363 {int regmap; int rtc; } ;
typedef int irqreturn_t ;


 int CTRL_FLAGS ;
 unsigned int FLAGS_A1F ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int RTC_AF ;
 int RTC_IRQF ;
 struct pcf85363* i2c_get_clientdata (void*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,unsigned int,int ) ;
 int rtc_update_irq (int ,int,int) ;

__attribute__((used)) static irqreturn_t pcf85363_rtc_handle_irq(int irq, void *dev_id)
{
 struct pcf85363 *pcf85363 = i2c_get_clientdata(dev_id);
 unsigned int flags;
 int err;

 err = regmap_read(pcf85363->regmap, CTRL_FLAGS, &flags);
 if (err)
  return IRQ_NONE;

 if (flags & FLAGS_A1F) {
  rtc_update_irq(pcf85363->rtc, 1, RTC_IRQF | RTC_AF);
  regmap_update_bits(pcf85363->regmap, CTRL_FLAGS, FLAGS_A1F, 0);
  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}
