
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twl_rtc {scalar_t__ class; int rtc; } ;
typedef int irqreturn_t ;


 int BIT_RTC_STATUS_REG_ALARM_M ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int REG_RTC_STATUS_REG ;
 unsigned long RTC_AF ;
 unsigned long RTC_IRQF ;
 unsigned long RTC_PF ;
 int TWL4030_INT_PWR_ISR1 ;
 int TWL4030_MODULE_INT ;
 scalar_t__ TWL_4030 ;
 int rtc_update_irq (int ,int,unsigned long) ;
 int twl_i2c_read_u8 (int ,int*,int ) ;
 int twl_rtc_read_u8 (struct twl_rtc*,int*,int ) ;
 int twl_rtc_write_u8 (struct twl_rtc*,int,int ) ;

__attribute__((used)) static irqreturn_t twl_rtc_interrupt(int irq, void *data)
{
 struct twl_rtc *twl_rtc = data;
 unsigned long events;
 int ret = IRQ_NONE;
 int res;
 u8 rd_reg;

 res = twl_rtc_read_u8(twl_rtc, &rd_reg, REG_RTC_STATUS_REG);
 if (res)
  goto out;






 if (rd_reg & BIT_RTC_STATUS_REG_ALARM_M)
  events = RTC_IRQF | RTC_AF;
 else
  events = RTC_IRQF | RTC_PF;

 res = twl_rtc_write_u8(twl_rtc, BIT_RTC_STATUS_REG_ALARM_M,
          REG_RTC_STATUS_REG);
 if (res)
  goto out;

 if (twl_rtc->class == TWL_4030) {
  res = twl_i2c_read_u8(TWL4030_MODULE_INT,
   &rd_reg, TWL4030_INT_PWR_ISR1);
  if (res)
   goto out;
 }


 rtc_update_irq(twl_rtc->rtc, 1, events);

 ret = IRQ_HANDLED;
out:
 return ret;
}
