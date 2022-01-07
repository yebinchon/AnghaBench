
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 scalar_t__ IS_ERR (struct task_struct*) ;
 int PTR_ERR (struct task_struct*) ;
 struct task_struct* kthread_run (int ,int *,char*) ;
 int register_reboot_notifier (int *) ;
 int xb_init_comms () ;
 int xenwatch_thread ;
 int xs_reboot_nb ;
 int xs_reset_watches () ;

int xs_init(void)
{
 int err;
 struct task_struct *task;

 register_reboot_notifier(&xs_reboot_nb);


 err = xb_init_comms();
 if (err)
  return err;

 task = kthread_run(xenwatch_thread, ((void*)0), "xenwatch");
 if (IS_ERR(task))
  return PTR_ERR(task);


 xs_reset_watches();

 return 0;
}
