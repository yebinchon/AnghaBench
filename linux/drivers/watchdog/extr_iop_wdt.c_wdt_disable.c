
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IOP_WDTCR_DIS ;
 int IOP_WDTCR_DIS_ARM ;
 int WDT_ENABLED ;
 int clear_bit (int ,int *) ;
 int pr_info (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wdt_lock ;
 int wdt_status ;
 scalar_t__ wdt_supports_disable () ;
 int write_wdtcr (int ) ;

__attribute__((used)) static int wdt_disable(void)
{

 if (wdt_supports_disable()) {
  spin_lock(&wdt_lock);
  write_wdtcr(IOP_WDTCR_DIS_ARM);
  write_wdtcr(IOP_WDTCR_DIS);
  clear_bit(WDT_ENABLED, &wdt_status);
  spin_unlock(&wdt_lock);
  pr_info("Disabled\n");
  return 0;
 } else
  return 1;
}
