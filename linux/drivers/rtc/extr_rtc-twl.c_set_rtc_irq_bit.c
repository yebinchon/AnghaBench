
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl_rtc {unsigned char rtc_irq_bits; } ;


 unsigned char BIT_RTC_INTERRUPTS_REG_EVERY_M ;
 int REG_RTC_INTERRUPTS_REG ;
 int twl_rtc_write_u8 (struct twl_rtc*,unsigned char,int ) ;

__attribute__((used)) static int set_rtc_irq_bit(struct twl_rtc *twl_rtc, unsigned char bit)
{
 unsigned char val;
 int ret;


 if (twl_rtc->rtc_irq_bits & bit)
  return 0;

 val = twl_rtc->rtc_irq_bits | bit;
 val &= ~BIT_RTC_INTERRUPTS_REG_EVERY_M;
 ret = twl_rtc_write_u8(twl_rtc, val, REG_RTC_INTERRUPTS_REG);
 if (ret == 0)
  twl_rtc->rtc_irq_bits = val;

 return ret;
}
