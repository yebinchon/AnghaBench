
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SCx200_WDT_WDCNFG ;
 scalar_t__ SCx200_WDT_WDSTS ;
 int SCx200_WDT_WDSTS_WDOVF ;
 scalar_t__ SCx200_WDT_WDTO ;
 int W_DISABLE ;
 int outb (int ,scalar_t__) ;
 int outw (int ,scalar_t__) ;
 int pr_debug (char*) ;
 scalar_t__ scx200_cb_base ;
 int scx_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void scx200_wdt_disable(void)
{
 pr_debug("disabling watchdog timer\n");

 spin_lock(&scx_lock);
 outw(0, scx200_cb_base + SCx200_WDT_WDTO);
 outb(SCx200_WDT_WDSTS_WDOVF, scx200_cb_base + SCx200_WDT_WDSTS);
 outw(W_DISABLE, scx200_cb_base + SCx200_WDT_WDCNFG);
 spin_unlock(&scx_lock);
}
