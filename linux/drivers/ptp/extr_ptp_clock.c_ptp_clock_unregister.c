
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptp_clock {int defunct; int clock; int devid; scalar_t__ pps_source; scalar_t__ kworker; int aux_work; int tsev_wq; } ;


 int device_destroy (int ,int ) ;
 int kthread_cancel_delayed_work_sync (int *) ;
 int kthread_destroy_worker (scalar_t__) ;
 int posix_clock_unregister (int *) ;
 int pps_unregister_source (scalar_t__) ;
 int ptp_class ;
 int ptp_cleanup_pin_groups (struct ptp_clock*) ;
 int wake_up_interruptible (int *) ;

int ptp_clock_unregister(struct ptp_clock *ptp)
{
 ptp->defunct = 1;
 wake_up_interruptible(&ptp->tsev_wq);

 if (ptp->kworker) {
  kthread_cancel_delayed_work_sync(&ptp->aux_work);
  kthread_destroy_worker(ptp->kworker);
 }


 if (ptp->pps_source)
  pps_unregister_source(ptp->pps_source);

 device_destroy(ptp_class, ptp->devid);
 ptp_cleanup_pin_groups(ptp);

 posix_clock_unregister(&ptp->clock);
 return 0;
}
