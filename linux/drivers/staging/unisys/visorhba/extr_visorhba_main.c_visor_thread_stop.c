
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int kthread_stop (struct task_struct*) ;

__attribute__((used)) static void visor_thread_stop(struct task_struct *task)
{
 kthread_stop(task);
}
