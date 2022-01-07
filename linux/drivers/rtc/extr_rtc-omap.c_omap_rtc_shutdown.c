
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct platform_device {int dummy; } ;
struct omap_rtc {TYPE_1__* type; } ;
struct TYPE_2__ {int (* lock ) (struct omap_rtc*) ;int (* unlock ) (struct omap_rtc*) ;} ;


 int OMAP_RTC_INTERRUPTS_IT_ALARM ;
 int OMAP_RTC_INTERRUPTS_REG ;
 struct omap_rtc* platform_get_drvdata (struct platform_device*) ;
 int rtc_read (struct omap_rtc*,int ) ;
 int rtc_write (struct omap_rtc*,int ,int ) ;
 int stub1 (struct omap_rtc*) ;
 int stub2 (struct omap_rtc*) ;

__attribute__((used)) static void omap_rtc_shutdown(struct platform_device *pdev)
{
 struct omap_rtc *rtc = platform_get_drvdata(pdev);
 u8 mask;





 rtc->type->unlock(rtc);
 mask = rtc_read(rtc, OMAP_RTC_INTERRUPTS_REG);
 mask &= OMAP_RTC_INTERRUPTS_IT_ALARM;
 rtc_write(rtc, OMAP_RTC_INTERRUPTS_REG, mask);
 rtc->type->lock(rtc);
}
