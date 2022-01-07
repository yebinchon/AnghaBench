
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptp_clock {int aux_work; int kworker; } ;


 int kthread_mod_delayed_work (int ,int *,unsigned long) ;

int ptp_schedule_worker(struct ptp_clock *ptp, unsigned long delay)
{
 return kthread_mod_delayed_work(ptp->kworker, &ptp->aux_work, delay);
}
