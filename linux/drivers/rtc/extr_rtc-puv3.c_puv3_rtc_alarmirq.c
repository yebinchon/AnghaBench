
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int RTC_AF ;
 int RTC_IRQF ;
 int RTC_RTSR ;
 int RTC_RTSR_AL ;
 int readl (int ) ;
 int rtc_update_irq (struct rtc_device*,int,int) ;
 int writel (int,int ) ;

__attribute__((used)) static irqreturn_t puv3_rtc_alarmirq(int irq, void *id)
{
 struct rtc_device *rdev = id;

 writel(readl(RTC_RTSR) | RTC_RTSR_AL, RTC_RTSR);
 rtc_update_irq(rdev, 1, RTC_AF | RTC_IRQF);
 return IRQ_HANDLED;
}
