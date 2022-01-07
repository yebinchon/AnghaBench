
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct watchdog_device {int dummy; } ;
struct sh_wdt {int dev; int clk; int lock; int timer; } ;


 int WTCSR_TME ;
 int clk_disable (int ) ;
 int del_timer (int *) ;
 int pm_runtime_put_sync (int ) ;
 int sh_wdt_read_csr () ;
 int sh_wdt_write_csr (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct sh_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int sh_wdt_stop(struct watchdog_device *wdt_dev)
{
 struct sh_wdt *wdt = watchdog_get_drvdata(wdt_dev);
 unsigned long flags;
 u8 csr;

 spin_lock_irqsave(&wdt->lock, flags);

 del_timer(&wdt->timer);

 csr = sh_wdt_read_csr();
 csr &= ~WTCSR_TME;
 sh_wdt_write_csr(csr);

 spin_unlock_irqrestore(&wdt->lock, flags);

 clk_disable(wdt->clk);
 pm_runtime_put_sync(wdt->dev);

 return 0;
}
