
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emergency_restart () ;
 scalar_t__ force_boot ;
 int pr_crit (char*) ;

__attribute__((used)) static void watchdog_fire(void)
{
 if (force_boot) {
  pr_crit("Initiating system reboot\n");
  emergency_restart();
  pr_crit("Reboot didn't ?????\n");
 }

 else {
  pr_crit("Immediate Reboot Disabled\n");
  pr_crit("System will reset when watchdog timer times out!\n");
 }
}
