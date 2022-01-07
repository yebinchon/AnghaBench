
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct notifier_block {int dummy; } ;


 int RTC_AF ;
 int RTC_IRQF ;
 scalar_t__ SC_IRQ_GROUP_RTC ;
 unsigned long SC_IRQ_RTC ;
 int imx_sc_rtc ;
 int rtc_update_irq (int ,int,int) ;

__attribute__((used)) static int imx_sc_rtc_alarm_notify(struct notifier_block *nb,
     unsigned long event, void *group)
{

 if (!((event & SC_IRQ_RTC) && (*(u8 *)group == SC_IRQ_GROUP_RTC)))
  return 0;

 rtc_update_irq(imx_sc_rtc, 1, RTC_IRQF | RTC_AF);

 return 0;
}
