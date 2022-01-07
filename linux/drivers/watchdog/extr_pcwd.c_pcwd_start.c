
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ revision; int io_lock; scalar_t__ io_addr; int timer; scalar_t__ next_heartbeat; } ;


 int EIO ;
 int HZ ;
 int ISA_COMMAND_TIMEOUT ;
 scalar_t__ PCWD_REVISION_C ;
 scalar_t__ VERBOSE ;
 scalar_t__ WDT_INTERVAL ;
 int WD_WDIS ;
 scalar_t__ debug ;
 int heartbeat ;
 int inb_p (scalar_t__) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int outb_p (int,scalar_t__) ;
 TYPE_1__ pcwd_private ;
 int pr_debug (char*) ;
 int pr_info (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int udelay (int ) ;

__attribute__((used)) static int pcwd_start(void)
{
 int stat_reg;

 pcwd_private.next_heartbeat = jiffies + (heartbeat * HZ);


 mod_timer(&pcwd_private.timer, jiffies + WDT_INTERVAL);


 if (pcwd_private.revision == PCWD_REVISION_C) {
  spin_lock(&pcwd_private.io_lock);
  outb_p(0x00, pcwd_private.io_addr + 3);
  udelay(ISA_COMMAND_TIMEOUT);
  stat_reg = inb_p(pcwd_private.io_addr + 2);
  spin_unlock(&pcwd_private.io_lock);
  if (stat_reg & WD_WDIS) {
   pr_info("Could not start watchdog\n");
   return -EIO;
  }
 }

 if (debug >= VERBOSE)
  pr_debug("Watchdog started\n");

 return 0;
}
