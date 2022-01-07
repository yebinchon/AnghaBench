
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int timeout; } ;


 int COUNT_ENAB ;
 int DEBUG_EN ;
 int MATCH_INT ;
 int MATCH_OUTPUT_HIGH ;
 int M_RES2 ;
 int RESET_COUNT ;
 int RESET_COUNT0 ;
 int STOP_COUNT0 ;
 int WDOG_COUNTER_RATE ;
 int WDTIM_COUNTER (int ) ;
 int WDTIM_CTRL (int ) ;
 int WDTIM_EMR (int ) ;
 int WDTIM_INT (int ) ;
 int WDTIM_MATCH0 (int ) ;
 int WDTIM_MCTRL (int ) ;
 int WDTIM_PULSE (int ) ;
 int cpu_relax () ;
 int io_lock ;
 scalar_t__ readl (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wdt_base ;
 int writel (int,int ) ;

__attribute__((used)) static int pnx4008_wdt_start(struct watchdog_device *wdd)
{
 spin_lock(&io_lock);


 writel(RESET_COUNT, WDTIM_CTRL(wdt_base));

 while (readl(WDTIM_COUNTER(wdt_base)))
  cpu_relax();

 writel(M_RES2 | STOP_COUNT0 | RESET_COUNT0, WDTIM_MCTRL(wdt_base));

 writel(MATCH_OUTPUT_HIGH, WDTIM_EMR(wdt_base));

 writel(MATCH_INT, WDTIM_INT(wdt_base));

 writel(0xFFFF, WDTIM_PULSE(wdt_base));
 writel(wdd->timeout * WDOG_COUNTER_RATE, WDTIM_MATCH0(wdt_base));

 writel(COUNT_ENAB | DEBUG_EN, WDTIM_CTRL(wdt_base));

 spin_unlock(&io_lock);
 return 0;
}
