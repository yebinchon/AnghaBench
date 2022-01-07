
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ revision; int io_lock; scalar_t__ io_addr; } ;


 scalar_t__ DEBUG ;
 scalar_t__ PCWD_REVISION_C ;
 scalar_t__ VERBOSE ;
 int WD_REVC_R2DS ;
 scalar_t__ debug ;
 int inb_p (scalar_t__) ;
 int outb_p (int,scalar_t__) ;
 TYPE_1__ pcwd_private ;
 int pr_debug (char*,int) ;
 int pr_info (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int pcwd_clear_status(void)
{
 int control_status;

 if (pcwd_private.revision == PCWD_REVISION_C) {
  spin_lock(&pcwd_private.io_lock);

  if (debug >= VERBOSE)
   pr_info("clearing watchdog trip status\n");

  control_status = inb_p(pcwd_private.io_addr + 1);

  if (debug >= DEBUG) {
   pr_debug("status was: 0x%02x\n", control_status);
   pr_debug("sending: 0x%02x\n",
     (control_status & WD_REVC_R2DS));
  }


  outb_p((control_status & WD_REVC_R2DS),
      pcwd_private.io_addr + 1);

  spin_unlock(&pcwd_private.io_lock);
 }
 return 0;
}
