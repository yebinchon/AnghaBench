
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmos_rtc {int dev; int (* wake_off ) (int ) ;} ;


 unsigned char CMOS_READ (int ) ;
 int CMOS_WRITE (unsigned char,int ) ;
 unsigned char RTC_AIE ;
 int RTC_CONTROL ;
 int cmos_checkintr (struct cmos_rtc*,unsigned char) ;
 scalar_t__ cmos_use_acpi_alarm () ;
 int hpet_mask_rtc_irq_bit (unsigned char) ;
 int stub1 (int ) ;
 scalar_t__ use_hpet_alarm () ;

__attribute__((used)) static void cmos_irq_disable(struct cmos_rtc *cmos, unsigned char mask)
{
 unsigned char rtc_control;

 rtc_control = CMOS_READ(RTC_CONTROL);
 rtc_control &= ~mask;
 CMOS_WRITE(rtc_control, RTC_CONTROL);
 if (use_hpet_alarm())
  hpet_mask_rtc_irq_bit(mask);

 if ((mask & RTC_AIE) && cmos_use_acpi_alarm()) {
  if (cmos->wake_off)
   cmos->wake_off(cmos->dev);
 }

 cmos_checkintr(cmos, rtc_control);
}
