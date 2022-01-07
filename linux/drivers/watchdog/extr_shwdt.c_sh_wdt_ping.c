
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct timer_list {int dummy; } ;
struct sh_wdt {int lock; int dev; int timer; } ;


 int WTCSR_IOVF ;
 int clock_division_ratio ;
 int dev_warn (int ,char*) ;
 struct sh_wdt* from_timer (int ,struct timer_list*,int ) ;
 int jiffies ;
 int mod_timer (int *,int ) ;
 int next_heartbeat ;
 int next_ping_period (int ) ;
 int sh_wdt_read_csr () ;
 int sh_wdt_write_cnt (int ) ;
 int sh_wdt_write_csr (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_before (int ,int ) ;
 int timer ;
 struct sh_wdt* wdt ;

__attribute__((used)) static void sh_wdt_ping(struct timer_list *t)
{
 struct sh_wdt *wdt = from_timer(wdt, t, timer);
 unsigned long flags;

 spin_lock_irqsave(&wdt->lock, flags);
 if (time_before(jiffies, next_heartbeat)) {
  u8 csr;

  csr = sh_wdt_read_csr();
  csr &= ~WTCSR_IOVF;
  sh_wdt_write_csr(csr);

  sh_wdt_write_cnt(0);

  mod_timer(&wdt->timer, next_ping_period(clock_division_ratio));
 } else
  dev_warn(wdt->dev, "Heartbeat lost! Will not ping "
           "the watchdog\n");
 spin_unlock_irqrestore(&wdt->lock, flags);
}
