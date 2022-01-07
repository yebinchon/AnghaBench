
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ use_shadow_imr; } ;


 int AT91_RTC_IMR ;
 TYPE_1__* at91_rtc_config ;
 int at91_rtc_lock ;
 int at91_rtc_read (int ) ;
 int at91_rtc_shadow_imr ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u32 at91_rtc_read_imr(void)
{
 unsigned long flags;
 u32 mask;

 if (at91_rtc_config->use_shadow_imr) {
  spin_lock_irqsave(&at91_rtc_lock, flags);
  mask = at91_rtc_shadow_imr;
  spin_unlock_irqrestore(&at91_rtc_lock, flags);
 } else {
  mask = at91_rtc_read(AT91_RTC_IMR);
 }

 return mask;
}
