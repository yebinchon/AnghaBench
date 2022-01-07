
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c_rtc {scalar_t__ base; int rtc; } ;


 int RTC_AF ;
 int RTC_IRQF ;
 scalar_t__ S3C2410_INTP ;
 int rtc_update_irq (int ,int,int) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void s3c6410_rtc_irq(struct s3c_rtc *info, int mask)
{
 rtc_update_irq(info->rtc, 1, RTC_AF | RTC_IRQF);
 writeb(mask, info->base + S3C2410_INTP);
}
