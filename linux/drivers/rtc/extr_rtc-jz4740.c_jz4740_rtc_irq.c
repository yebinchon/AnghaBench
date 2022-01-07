
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct jz4740_rtc {int rtc; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int JZ_REG_RTC_CTRL ;
 int JZ_RTC_CTRL_1HZ ;
 int JZ_RTC_CTRL_AF ;
 unsigned long RTC_AF ;
 unsigned long RTC_IRQF ;
 unsigned long RTC_UF ;
 int jz4740_rtc_ctrl_set_bits (struct jz4740_rtc*,int,int) ;
 int jz4740_rtc_reg_read (struct jz4740_rtc*,int ) ;
 int rtc_update_irq (int ,int,unsigned long) ;

__attribute__((used)) static irqreturn_t jz4740_rtc_irq(int irq, void *data)
{
 struct jz4740_rtc *rtc = data;
 uint32_t ctrl;
 unsigned long events = 0;

 ctrl = jz4740_rtc_reg_read(rtc, JZ_REG_RTC_CTRL);

 if (ctrl & JZ_RTC_CTRL_1HZ)
  events |= (RTC_UF | RTC_IRQF);

 if (ctrl & JZ_RTC_CTRL_AF)
  events |= (RTC_AF | RTC_IRQF);

 rtc_update_irq(rtc->rtc, 1, events);

 jz4740_rtc_ctrl_set_bits(rtc, JZ_RTC_CTRL_1HZ | JZ_RTC_CTRL_AF, 0);

 return IRQ_HANDLED;
}
