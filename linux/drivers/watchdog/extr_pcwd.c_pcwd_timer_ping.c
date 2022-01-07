
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {scalar_t__ revision; int io_lock; int timer; scalar_t__ io_addr; int next_heartbeat; } ;


 scalar_t__ PCWD_REVISION_A ;
 scalar_t__ WDT_INTERVAL ;
 int WD_WDRST ;
 int inb_p (scalar_t__) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int outb_p (int,scalar_t__) ;
 TYPE_1__ pcwd_private ;
 int pr_warn (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ time_before (scalar_t__,int ) ;

__attribute__((used)) static void pcwd_timer_ping(struct timer_list *unused)
{
 int wdrst_stat;



 if (time_before(jiffies, pcwd_private.next_heartbeat)) {

  spin_lock(&pcwd_private.io_lock);
  if (pcwd_private.revision == PCWD_REVISION_A) {


   wdrst_stat = inb_p(pcwd_private.io_addr);
   wdrst_stat &= 0x0F;
   wdrst_stat |= WD_WDRST;

   outb_p(wdrst_stat, pcwd_private.io_addr + 1);
  } else {

   outb_p(0x00, pcwd_private.io_addr);
  }


  mod_timer(&pcwd_private.timer, jiffies + WDT_INTERVAL);

  spin_unlock(&pcwd_private.io_lock);
 } else {
  pr_warn("Heartbeat lost! Will not ping the watchdog\n");
 }
}
