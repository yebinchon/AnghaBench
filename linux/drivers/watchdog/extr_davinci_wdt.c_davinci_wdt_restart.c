
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct watchdog_device {int dummy; } ;
struct davinci_wdt_device {scalar_t__ base; } ;


 scalar_t__ PRD12 ;
 scalar_t__ PRD34 ;
 scalar_t__ TCR ;
 scalar_t__ TGCR ;
 scalar_t__ TIM12 ;
 int TIM12RS_UNRESET ;
 scalar_t__ TIM34 ;
 int TIM34RS_UNRESET ;
 int TIMMODE_64BIT_WDOG ;
 int WDEN ;
 int WDKEY_SEQ0 ;
 int WDKEY_SEQ1 ;
 scalar_t__ WDTCR ;
 int iowrite32 (int,scalar_t__) ;
 struct davinci_wdt_device* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int davinci_wdt_restart(struct watchdog_device *wdd,
          unsigned long action, void *data)
{
 struct davinci_wdt_device *davinci_wdt = watchdog_get_drvdata(wdd);
 u32 tgcr, wdtcr;


 iowrite32(0, davinci_wdt->base + TCR);


 tgcr = 0;
 iowrite32(tgcr, davinci_wdt->base + TGCR);
 tgcr = TIMMODE_64BIT_WDOG | TIM12RS_UNRESET | TIM34RS_UNRESET;
 iowrite32(tgcr, davinci_wdt->base + TGCR);


 iowrite32(0, davinci_wdt->base + TIM12);
 iowrite32(0, davinci_wdt->base + TIM34);
 iowrite32(0, davinci_wdt->base + PRD12);
 iowrite32(0, davinci_wdt->base + PRD34);


 wdtcr = WDKEY_SEQ0 | WDEN;
 iowrite32(wdtcr, davinci_wdt->base + WDTCR);


 wdtcr = WDKEY_SEQ1 | WDEN;
 iowrite32(wdtcr, davinci_wdt->base + WDTCR);


 wdtcr = 0x00004000;
 iowrite32(wdtcr, davinci_wdt->base + WDTCR);

 return 0;
}
