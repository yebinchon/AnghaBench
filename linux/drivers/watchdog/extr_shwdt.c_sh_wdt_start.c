
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct watchdog_device {int dummy; } ;
struct sh_wdt {int lock; int timer; int clk; int dev; } ;


 int HZ ;
 int RSTCSR_RSTS ;
 int WTCSR_RSTS ;
 int WTCSR_TME ;
 int WTCSR_WT ;
 int clk_enable (int ) ;
 int clock_division_ratio ;
 int heartbeat ;
 scalar_t__ jiffies ;
 int mod_timer (int *,int ) ;
 scalar_t__ next_heartbeat ;
 int next_ping_period (int) ;
 int pm_runtime_get_sync (int ) ;
 int sh_wdt_read_csr () ;
 int sh_wdt_read_rstcsr () ;
 int sh_wdt_write_cnt (int ) ;
 int sh_wdt_write_csr (int) ;
 int sh_wdt_write_rstcsr (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct sh_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int sh_wdt_start(struct watchdog_device *wdt_dev)
{
 struct sh_wdt *wdt = watchdog_get_drvdata(wdt_dev);
 unsigned long flags;
 u8 csr;

 pm_runtime_get_sync(wdt->dev);
 clk_enable(wdt->clk);

 spin_lock_irqsave(&wdt->lock, flags);

 next_heartbeat = jiffies + (heartbeat * HZ);
 mod_timer(&wdt->timer, next_ping_period(clock_division_ratio));

 csr = sh_wdt_read_csr();
 csr |= WTCSR_WT | clock_division_ratio;
 sh_wdt_write_csr(csr);

 sh_wdt_write_cnt(0);
 csr = sh_wdt_read_csr();
 csr |= WTCSR_TME;
 csr &= ~WTCSR_RSTS;
 sh_wdt_write_csr(csr);






 spin_unlock_irqrestore(&wdt->lock, flags);

 return 0;
}
