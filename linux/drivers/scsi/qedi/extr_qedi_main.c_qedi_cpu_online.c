
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct qedi_percpu_s {struct task_struct* iothread; } ;


 scalar_t__ IS_ERR (struct task_struct*) ;
 int PTR_ERR (struct task_struct*) ;
 int cpu_to_node (unsigned int) ;
 int kthread_bind (struct task_struct*,unsigned int) ;
 struct task_struct* kthread_create_on_node (int ,void*,int ,char*,unsigned int) ;
 int qedi_percpu ;
 int qedi_percpu_io_thread ;
 struct qedi_percpu_s* this_cpu_ptr (int *) ;
 int wake_up_process (struct task_struct*) ;

__attribute__((used)) static int qedi_cpu_online(unsigned int cpu)
{
 struct qedi_percpu_s *p = this_cpu_ptr(&qedi_percpu);
 struct task_struct *thread;

 thread = kthread_create_on_node(qedi_percpu_io_thread, (void *)p,
     cpu_to_node(cpu),
     "qedi_thread/%d", cpu);
 if (IS_ERR(thread))
  return PTR_ERR(thread);

 kthread_bind(thread, cpu);
 p->iothread = thread;
 wake_up_process(thread);
 return 0;
}
