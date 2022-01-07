
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int RTC_INTR_FLAGS ;
 int RTC_IRQF ;
 int RTC_IRQMASK ;
 scalar_t__ is_intr (int) ;
 int rtc_lock ;
 int rtc_update_irq (void*,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vrtc_cmos_read (int ) ;

__attribute__((used)) static irqreturn_t mrst_rtc_irq(int irq, void *p)
{
 u8 irqstat;

 spin_lock(&rtc_lock);

 irqstat = vrtc_cmos_read(RTC_INTR_FLAGS);
 spin_unlock(&rtc_lock);

 irqstat &= RTC_IRQMASK | RTC_IRQF;
 if (is_intr(irqstat)) {
  rtc_update_irq(p, 1, irqstat);
  return IRQ_HANDLED;
 }
 return IRQ_NONE;
}
