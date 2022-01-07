
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct rtc_test_data {int rtc; } ;


 int RTC_AF ;
 int RTC_IRQF ;
 int alarm ;
 struct rtc_test_data* from_timer (int ,struct timer_list*,int ) ;
 int rtc_update_irq (int ,int,int) ;
 struct rtc_test_data* rtd ;

__attribute__((used)) static void test_rtc_alarm_handler(struct timer_list *t)
{
 struct rtc_test_data *rtd = from_timer(rtd, t, alarm);

 rtc_update_irq(rtd->rtc, 1, RTC_AF | RTC_IRQF);
}
