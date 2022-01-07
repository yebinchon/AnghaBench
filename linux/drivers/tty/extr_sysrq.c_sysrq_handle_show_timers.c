
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sysrq_timer_list_show () ;

__attribute__((used)) static void sysrq_handle_show_timers(int key)
{
 sysrq_timer_list_show();
}
