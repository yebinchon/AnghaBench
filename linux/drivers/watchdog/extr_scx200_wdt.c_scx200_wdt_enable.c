
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SCx200_WDT_WDCNFG ;
 scalar_t__ SCx200_WDT_WDSTS ;
 int SCx200_WDT_WDSTS_WDOVF ;
 scalar_t__ SCx200_WDT_WDTO ;
 int W_ENABLE ;
 int outb (int ,scalar_t__) ;
 int outw (int ,scalar_t__) ;
 int pr_debug (char*,int ) ;
 scalar_t__ scx200_cb_base ;
 int scx200_wdt_ping () ;
 int scx_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wdto_restart ;

__attribute__((used)) static void scx200_wdt_enable(void)
{
 pr_debug("enabling watchdog timer, wdto_restart = %d\n", wdto_restart);

 spin_lock(&scx_lock);
 outw(0, scx200_cb_base + SCx200_WDT_WDTO);
 outb(SCx200_WDT_WDSTS_WDOVF, scx200_cb_base + SCx200_WDT_WDSTS);
 outw(W_ENABLE, scx200_cb_base + SCx200_WDT_WDCNFG);
 spin_unlock(&scx_lock);

 scx200_wdt_ping();
}
