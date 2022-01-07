
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpuhp_remove_state (int ) ;
 int isst_cpu_info ;
 int isst_if_online_id ;
 int kfree (int ) ;

__attribute__((used)) static void isst_if_cpu_info_exit(void)
{
 cpuhp_remove_state(isst_if_online_id);
 kfree(isst_cpu_info);
}
