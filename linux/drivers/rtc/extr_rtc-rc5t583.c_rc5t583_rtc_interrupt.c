
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rc5t583_rtc {int rtc; } ;
struct rc5t583 {int regmap; } ;
struct device {struct device* parent; } ;
typedef int irqreturn_t ;


 int GET_YAL_STATUS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int RC5T583_RTC_CTL2 ;
 unsigned long RTC_AF ;
 unsigned long RTC_IRQF ;
 void* dev_get_drvdata (struct device*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;
 int rtc_update_irq (int ,int,unsigned long) ;

__attribute__((used)) static irqreturn_t rc5t583_rtc_interrupt(int irq, void *rtc)
{
 struct device *dev = rtc;
 struct rc5t583 *rc5t583 = dev_get_drvdata(dev->parent);
 struct rc5t583_rtc *rc5t583_rtc = dev_get_drvdata(dev);
 unsigned long events = 0;
 int ret;
 u32 rtc_reg;

 ret = regmap_read(rc5t583->regmap, RC5T583_RTC_CTL2, &rtc_reg);
 if (ret < 0)
  return IRQ_NONE;

 if (rtc_reg & GET_YAL_STATUS) {
  events = RTC_IRQF | RTC_AF;

  rtc_reg &= ~GET_YAL_STATUS;
 }

 ret = regmap_write(rc5t583->regmap, RC5T583_RTC_CTL2, rtc_reg);
 if (ret)
  return IRQ_NONE;


 rtc_update_irq(rc5t583_rtc->rtc, 1, events);

 return IRQ_HANDLED;
}
