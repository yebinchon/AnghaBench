
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerclamp_worker_data {unsigned long cpu; int clamping; int balancing_work; struct kthread_worker* worker; int idle_injection_work; scalar_t__ count; } ;
struct kthread_worker {int task; } ;


 scalar_t__ IS_ERR (struct kthread_worker*) ;
 int SCHED_FIFO ;
 int clamp_balancing_func ;
 int clamp_idle_injection_func ;
 int cpu_clamping_mask ;
 struct kthread_worker* kthread_create_worker_on_cpu (unsigned long,int ,char*,unsigned long) ;
 int kthread_init_delayed_work (int *,int ) ;
 int kthread_init_work (int *,int ) ;
 int kthread_queue_work (struct kthread_worker*,int *) ;
 struct powerclamp_worker_data* per_cpu_ptr (int ,unsigned long) ;
 int sched_setscheduler (int ,int ,int *) ;
 int set_bit (unsigned long,int ) ;
 int sparam ;
 int worker_data ;

__attribute__((used)) static void start_power_clamp_worker(unsigned long cpu)
{
 struct powerclamp_worker_data *w_data = per_cpu_ptr(worker_data, cpu);
 struct kthread_worker *worker;

 worker = kthread_create_worker_on_cpu(cpu, 0, "kidle_inj/%ld", cpu);
 if (IS_ERR(worker))
  return;

 w_data->worker = worker;
 w_data->count = 0;
 w_data->cpu = cpu;
 w_data->clamping = 1;
 set_bit(cpu, cpu_clamping_mask);
 sched_setscheduler(worker->task, SCHED_FIFO, &sparam);
 kthread_init_work(&w_data->balancing_work, clamp_balancing_func);
 kthread_init_delayed_work(&w_data->idle_injection_work,
      clamp_idle_injection_func);
 kthread_queue_work(w_data->worker, &w_data->balancing_work);
}
