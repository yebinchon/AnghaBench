
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c_rtc {int rtc; } ;


 int RTC_AF ;
 int RTC_IRQF ;
 int rtc_update_irq (int ,int,int) ;

__attribute__((used)) static void s3c24xx_rtc_irq(struct s3c_rtc *info, int mask)
{
 rtc_update_irq(info->rtc, 1, RTC_AF | RTC_IRQF);
}
