
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer {int dummy; } ;
typedef enum hrtimer_restart { ____Placeholder_hrtimer_restart } hrtimer_restart ;


 int HRTIMER_NORESTART ;
 int THIS_MODULE ;
 int emergency_restart () ;
 int module_put (int ) ;
 int panic (char*) ;
 int pr_crit (char*) ;
 scalar_t__ soft_noboot ;
 scalar_t__ soft_panic ;

__attribute__((used)) static enum hrtimer_restart softdog_fire(struct hrtimer *timer)
{
 module_put(THIS_MODULE);
 if (soft_noboot) {
  pr_crit("Triggered - Reboot ignored\n");
 } else if (soft_panic) {
  pr_crit("Initiating panic\n");
  panic("Software Watchdog Timer expired");
 } else {
  pr_crit("Initiating system reboot\n");
  emergency_restart();
  pr_crit("Reboot didn't ?????\n");
 }

 return HRTIMER_NORESTART;
}
