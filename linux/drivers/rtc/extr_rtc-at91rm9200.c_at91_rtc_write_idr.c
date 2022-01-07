
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int AT91_RTC_IDR ;
 int AT91_RTC_SR ;
 int at91_rtc_lock ;
 int at91_rtc_read (int ) ;
 int at91_rtc_shadow_imr ;
 int at91_rtc_write (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void at91_rtc_write_idr(u32 mask)
{
 unsigned long flags;

 spin_lock_irqsave(&at91_rtc_lock, flags);
 at91_rtc_write(AT91_RTC_IDR, mask);
 at91_rtc_read(AT91_RTC_SR);
 at91_rtc_shadow_imr &= ~mask;
 spin_unlock_irqrestore(&at91_rtc_lock, flags);
}
