
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerclamp_worker_data {int clamping; int * worker; int cpu; int idle_injection_work; int balancing_work; } ;


 int clear_bit (int ,int ) ;
 int cpu_clamping_mask ;
 int kthread_cancel_delayed_work_sync (int *) ;
 int kthread_cancel_work_sync (int *) ;
 int kthread_destroy_worker (int *) ;
 struct powerclamp_worker_data* per_cpu_ptr (int ,unsigned long) ;
 int smp_wmb () ;
 int worker_data ;

__attribute__((used)) static void stop_power_clamp_worker(unsigned long cpu)
{
 struct powerclamp_worker_data *w_data = per_cpu_ptr(worker_data, cpu);

 if (!w_data->worker)
  return;

 w_data->clamping = 0;






 smp_wmb();
 kthread_cancel_work_sync(&w_data->balancing_work);
 kthread_cancel_delayed_work_sync(&w_data->idle_injection_work);







 clear_bit(w_data->cpu, cpu_clamping_mask);
 kthread_destroy_worker(w_data->worker);

 w_data->worker = ((void*)0);
}
