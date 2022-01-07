
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int parent; } ;
struct rtc_device {TYPE_1__ dev; } ;
struct TYPE_10__ {TYPE_2__* type; struct rtc_device* rtc; } ;
struct TYPE_9__ {int (* lock ) (TYPE_3__*) ;int (* unlock ) (TYPE_3__*) ;} ;


 int OMAP_RTC_PMIC_EXT_WKUP_EN (int ) ;
 int OMAP_RTC_PMIC_EXT_WKUP_POL (int ) ;
 int OMAP_RTC_PMIC_POWER_EN_EN ;
 int OMAP_RTC_PMIC_REG ;
 int mdelay (int) ;
 int omap_rtc_power_off_program (int ) ;
 TYPE_3__* omap_rtc_power_off_rtc ;
 int rtc_readl (TYPE_3__*,int ) ;
 int rtc_writel (TYPE_3__*,int ,int) ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_3__*) ;

__attribute__((used)) static void omap_rtc_power_off(void)
{
 struct rtc_device *rtc = omap_rtc_power_off_rtc->rtc;
 u32 val;

 omap_rtc_power_off_program(rtc->dev.parent);


 omap_rtc_power_off_rtc->type->unlock(omap_rtc_power_off_rtc);
 val = rtc_readl(omap_rtc_power_off_rtc, OMAP_RTC_PMIC_REG);
 val |= OMAP_RTC_PMIC_POWER_EN_EN | OMAP_RTC_PMIC_EXT_WKUP_POL(0) |
   OMAP_RTC_PMIC_EXT_WKUP_EN(0);
 rtc_writel(omap_rtc_power_off_rtc, OMAP_RTC_PMIC_REG, val);
 omap_rtc_power_off_rtc->type->lock(omap_rtc_power_off_rtc);






 mdelay(1500);
}
