
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrst_rtc {int rtc; } ;


 int RTC_INTR_FLAGS ;
 unsigned char RTC_IRQF ;
 unsigned char RTC_IRQMASK ;
 scalar_t__ is_intr (unsigned char) ;
 int rtc_update_irq (int ,int,unsigned char) ;
 unsigned char vrtc_cmos_read (int ) ;

__attribute__((used)) static void mrst_checkintr(struct mrst_rtc *mrst, unsigned char rtc_control)
{
 unsigned char rtc_intr;





 rtc_intr = vrtc_cmos_read(RTC_INTR_FLAGS);
 rtc_intr &= (rtc_control & RTC_IRQMASK) | RTC_IRQF;
 if (is_intr(rtc_intr))
  rtc_update_irq(mrst->rtc, 1, rtc_intr);
}
