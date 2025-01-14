
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct watchdog_device {unsigned int timeout; } ;
struct davinci_wdt_device {scalar_t__ base; int clk; } ;


 scalar_t__ TIM12 ;
 scalar_t__ TIM34 ;
 int WDFLAG ;
 scalar_t__ WDTCR ;
 unsigned long clk_get_rate (int ) ;
 int do_div (int,unsigned long) ;
 int ioread32 (scalar_t__) ;
 struct davinci_wdt_device* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static unsigned int davinci_wdt_get_timeleft(struct watchdog_device *wdd)
{
 u64 timer_counter;
 unsigned long freq;
 u32 val;
 struct davinci_wdt_device *davinci_wdt = watchdog_get_drvdata(wdd);


 val = ioread32(davinci_wdt->base + WDTCR);
 if (val & WDFLAG)
  return 0;

 freq = clk_get_rate(davinci_wdt->clk);

 if (!freq)
  return 0;

 timer_counter = ioread32(davinci_wdt->base + TIM12);
 timer_counter |= ((u64)ioread32(davinci_wdt->base + TIM34) << 32);

 do_div(timer_counter, freq);

 return wdd->timeout - timer_counter;
}
