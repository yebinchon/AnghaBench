
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jz4740_rtc {int dummy; } ;
struct device {int dummy; } ;


 int JZ_RTC_CTRL_AF_IRQ ;
 struct jz4740_rtc* dev_get_drvdata (struct device*) ;
 int jz4740_rtc_ctrl_set_bits (struct jz4740_rtc*,int ,unsigned int) ;

__attribute__((used)) static int jz4740_rtc_alarm_irq_enable(struct device *dev, unsigned int enable)
{
 struct jz4740_rtc *rtc = dev_get_drvdata(dev);
 return jz4740_rtc_ctrl_set_bits(rtc, JZ_RTC_CTRL_AF_IRQ, enable);
}
