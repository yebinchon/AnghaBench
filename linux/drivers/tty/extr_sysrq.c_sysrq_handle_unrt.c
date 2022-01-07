
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int normalize_rt_tasks () ;

__attribute__((used)) static void sysrq_handle_unrt(int key)
{
 normalize_rt_tasks();
}
