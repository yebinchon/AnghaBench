
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmos_rtc {int rtc; } ;


 unsigned char CMOS_READ (int ) ;
 int RTC_INTR_FLAGS ;
 unsigned char RTC_IRQF ;
 unsigned char RTC_IRQMASK ;
 scalar_t__ is_intr (unsigned char) ;
 int rtc_update_irq (int ,int,unsigned char) ;
 scalar_t__ use_hpet_alarm () ;

__attribute__((used)) static void cmos_checkintr(struct cmos_rtc *cmos, unsigned char rtc_control)
{
 unsigned char rtc_intr;




 rtc_intr = CMOS_READ(RTC_INTR_FLAGS);

 if (use_hpet_alarm())
  return;

 rtc_intr &= (rtc_control & RTC_IRQMASK) | RTC_IRQF;
 if (is_intr(rtc_intr))
  rtc_update_irq(cmos->rtc, 1, rtc_intr);
}
