
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int dummy; } ;


 int RTC_UF ;
 int rtc_handle_legacy_irq (struct rtc_device*,int,int ) ;

void rtc_uie_update_irq(struct rtc_device *rtc)
{
 rtc_handle_legacy_irq(rtc, 1, RTC_UF);
}
