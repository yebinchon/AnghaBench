
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emergency_restart () ;
 int local_irq_enable () ;
 int lockdep_off () ;

__attribute__((used)) static void sysrq_handle_reboot(int key)
{
 lockdep_off();
 local_irq_enable();
 emergency_restart();
}
