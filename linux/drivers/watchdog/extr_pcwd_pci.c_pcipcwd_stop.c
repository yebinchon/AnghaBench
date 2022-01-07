
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int io_lock; scalar_t__ io_addr; } ;


 scalar_t__ VERBOSE ;
 int WD_PCI_WDIS ;
 scalar_t__ debug ;
 int inb_p (scalar_t__) ;
 int outb_p (int,scalar_t__) ;
 TYPE_1__ pcipcwd_private ;
 int pr_debug (char*) ;
 int pr_err (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int udelay (int) ;

__attribute__((used)) static int pcipcwd_stop(void)
{
 int stat_reg;

 spin_lock(&pcipcwd_private.io_lock);
 outb_p(0xA5, pcipcwd_private.io_addr + 3);
 udelay(1000);

 outb_p(0xA5, pcipcwd_private.io_addr + 3);
 udelay(1000);

 stat_reg = inb_p(pcipcwd_private.io_addr + 2);
 spin_unlock(&pcipcwd_private.io_lock);

 if (!(stat_reg & WD_PCI_WDIS)) {
  pr_err("Card did not acknowledge disable attempt\n");
  return -1;
 }

 if (debug >= VERBOSE)
  pr_debug("Watchdog stopped\n");

 return 0;
}
