
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TASK_UNINTERRUPTIBLE ;
 int show_state_filter (int ) ;

__attribute__((used)) static void sysrq_handle_showstate_blocked(int key)
{
 show_state_filter(TASK_UNINTERRUPTIBLE);
}
