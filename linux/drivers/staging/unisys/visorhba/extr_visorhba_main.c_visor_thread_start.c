
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 scalar_t__ IS_ERR (struct task_struct*) ;
 struct task_struct* kthread_run (int (*) (void*),void*,char*,char*) ;
 int pr_err (char*) ;

__attribute__((used)) static struct task_struct *visor_thread_start(int (*threadfn)(void *),
           void *thrcontext, char *name)
{
 struct task_struct *task;

 task = kthread_run(threadfn, thrcontext, "%s", name);
 if (IS_ERR(task)) {
  pr_err("visorbus failed to start thread\n");
  return ((void*)0);
 }
 return task;
}
