
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpuhp_remove_state_nocalls (int ) ;
 int hp_online ;

__attribute__((used)) static void oprofile_hrtimer_shutdown(void)
{
 cpuhp_remove_state_nocalls(hp_online);
}
