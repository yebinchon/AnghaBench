
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int show_state () ;
 int show_workqueue_state () ;

__attribute__((used)) static void sysrq_handle_showstate(int key)
{
 show_state();
 show_workqueue_state();
}
