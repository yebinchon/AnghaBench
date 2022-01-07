
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDT_DC ;
 int inb_p (int ) ;
 int outb_p (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wd_heartbeat ;
 int wdt_ctr_load (int,int) ;
 int wdt_ctr_mode (int,int) ;
 int wdt_lock ;

__attribute__((used)) static int wdt_start(void)
{
 unsigned long flags;
 spin_lock_irqsave(&wdt_lock, flags);
 inb_p(WDT_DC);
 wdt_ctr_mode(0, 3);

 wdt_ctr_mode(1, 2);

 wdt_ctr_mode(2, 0);

 wdt_ctr_load(0, 8948);
 wdt_ctr_load(1, wd_heartbeat);
 wdt_ctr_load(2, 65535);
 outb_p(0, WDT_DC);
 spin_unlock_irqrestore(&wdt_lock, flags);
 return 0;
}
