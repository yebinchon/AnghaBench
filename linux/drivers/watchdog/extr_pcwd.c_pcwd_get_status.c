
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ revision; int io_lock; scalar_t__ io_addr; } ;


 scalar_t__ PCWD_REVISION_A ;
 int WDIOF_CARDRESET ;
 int WDIOF_OVERHEAT ;
 int WD_REVC_TTRP ;
 int WD_REVC_WTRP ;
 int WD_T110 ;
 int WD_WDRST ;
 int inb (scalar_t__) ;
 int kernel_power_off () ;
 TYPE_1__ pcwd_private ;
 int pr_info (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ temp_panic ;

__attribute__((used)) static int pcwd_get_status(int *status)
{
 int control_status;

 *status = 0;
 spin_lock(&pcwd_private.io_lock);
 if (pcwd_private.revision == PCWD_REVISION_A)



  control_status = inb(pcwd_private.io_addr);
 else {





  control_status = inb(pcwd_private.io_addr + 1);
 }
 spin_unlock(&pcwd_private.io_lock);

 if (pcwd_private.revision == PCWD_REVISION_A) {
  if (control_status & WD_WDRST)
   *status |= WDIOF_CARDRESET;

  if (control_status & WD_T110) {
   *status |= WDIOF_OVERHEAT;
   if (temp_panic) {
    pr_info("Temperature overheat trip!\n");
    kernel_power_off();
   }
  }
 } else {
  if (control_status & WD_REVC_WTRP)
   *status |= WDIOF_CARDRESET;

  if (control_status & WD_REVC_TTRP) {
   *status |= WDIOF_OVERHEAT;
   if (temp_panic) {
    pr_info("Temperature overheat trip!\n");
    kernel_power_off();
   }
  }
 }

 return 0;
}
