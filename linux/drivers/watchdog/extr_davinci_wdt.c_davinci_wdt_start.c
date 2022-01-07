
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
typedef int u32 ;
struct watchdog_device {scalar_t__ timeout; } ;
struct davinci_wdt_device {scalar_t__ base; int clk; } ;


 int ENAMODE12_PERIODIC ;
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
 unsigned long clk_get_rate (int ) ;
 int iowrite32 (int,scalar_t__) ;
 struct davinci_wdt_device* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int davinci_wdt_start(struct watchdog_device *wdd)
{
 u32 tgcr;
 u32 timer_margin;
 unsigned long wdt_freq;
 struct davinci_wdt_device *davinci_wdt = watchdog_get_drvdata(wdd);

 wdt_freq = clk_get_rate(davinci_wdt->clk);


 iowrite32(0, davinci_wdt->base + TCR);

 iowrite32(0, davinci_wdt->base + TGCR);
 tgcr = TIMMODE_64BIT_WDOG | TIM12RS_UNRESET | TIM34RS_UNRESET;
 iowrite32(tgcr, davinci_wdt->base + TGCR);

 iowrite32(0, davinci_wdt->base + TIM12);
 iowrite32(0, davinci_wdt->base + TIM34);

 timer_margin = (((u64)wdd->timeout * wdt_freq) & 0xffffffff);
 iowrite32(timer_margin, davinci_wdt->base + PRD12);
 timer_margin = (((u64)wdd->timeout * wdt_freq) >> 32);
 iowrite32(timer_margin, davinci_wdt->base + PRD34);

 iowrite32(ENAMODE12_PERIODIC, davinci_wdt->base + TCR);





 iowrite32(WDKEY_SEQ0 | WDEN, davinci_wdt->base + WDTCR);

 iowrite32(WDKEY_SEQ1 | WDEN, davinci_wdt->base + WDTCR);
 return 0;
}
