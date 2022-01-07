
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROFILE_MUNMAP ;
 int PROFILE_TASK_EXIT ;
 int barrier () ;
 int end_cpu_work () ;
 int flush_cpu_work () ;
 int free_all_tasks () ;
 int free_cpumask_var (int ) ;
 int marked_cpus ;
 int module_load_nb ;
 int munmap_nb ;
 int profile_event_unregister (int ,int *) ;
 int task_exit_nb ;
 int task_free_nb ;
 int task_handoff_unregister (int *) ;
 int unregister_module_notifier (int *) ;

void sync_stop(void)
{
 end_cpu_work();
 unregister_module_notifier(&module_load_nb);
 profile_event_unregister(PROFILE_MUNMAP, &munmap_nb);
 profile_event_unregister(PROFILE_TASK_EXIT, &task_exit_nb);
 task_handoff_unregister(&task_free_nb);
 barrier();

 flush_cpu_work();

 free_all_tasks();
 free_cpumask_var(marked_cpus);
}
