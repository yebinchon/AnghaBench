
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUHP_AP_ONLINE_DYN ;
 int cpuhp_setup_state_nocalls (int ,char*,int ,int ) ;
 int hp_online ;
 int oprofile_timer_online ;
 int oprofile_timer_prep_down ;

__attribute__((used)) static int oprofile_hrtimer_setup(void)
{
 int ret;

 ret = cpuhp_setup_state_nocalls(CPUHP_AP_ONLINE_DYN,
     "oprofile/timer:online",
     oprofile_timer_online,
     oprofile_timer_prep_down);
 if (ret < 0)
  return ret;
 hp_online = ret;
 return 0;
}
