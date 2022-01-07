
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdebug_queued_cmd {struct sdebug_defer* sd_dp; struct scsi_cmnd* a_cmnd; } ;
struct sdebug_queue {int qc_lock; int in_use_bm; struct sdebug_queued_cmd* qc_arr; } ;
struct sdebug_dev_info {int num_in_q; } ;
struct sdebug_defer {int defer_t; } ;
struct scsi_cmnd {TYPE_1__* device; } ;
typedef enum sdeb_defer_type { ____Placeholder_sdeb_defer_type } sdeb_defer_type ;
struct TYPE_2__ {scalar_t__ hostdata; } ;


 void* SDEB_DEFER_NONE ;
 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 int clear_bit (int,int ) ;
 int retired_max_queue ;
 int sdebug_max_queue ;
 struct sdebug_queue* sdebug_q_arr ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stop_qc_helper (struct sdebug_defer*,int) ;
 int submit_queues ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static bool stop_queued_cmnd(struct scsi_cmnd *cmnd)
{
 unsigned long iflags;
 int j, k, qmax, r_qmax;
 enum sdeb_defer_type l_defer_t;
 struct sdebug_queue *sqp;
 struct sdebug_queued_cmd *sqcp;
 struct sdebug_dev_info *devip;
 struct sdebug_defer *sd_dp;

 for (j = 0, sqp = sdebug_q_arr; j < submit_queues; ++j, ++sqp) {
  spin_lock_irqsave(&sqp->qc_lock, iflags);
  qmax = sdebug_max_queue;
  r_qmax = atomic_read(&retired_max_queue);
  if (r_qmax > qmax)
   qmax = r_qmax;
  for (k = 0; k < qmax; ++k) {
   if (test_bit(k, sqp->in_use_bm)) {
    sqcp = &sqp->qc_arr[k];
    if (cmnd != sqcp->a_cmnd)
     continue;

    devip = (struct sdebug_dev_info *)
      cmnd->device->hostdata;
    if (devip)
     atomic_dec(&devip->num_in_q);
    sqcp->a_cmnd = ((void*)0);
    sd_dp = sqcp->sd_dp;
    if (sd_dp) {
     l_defer_t = sd_dp->defer_t;
     sd_dp->defer_t = SDEB_DEFER_NONE;
    } else
     l_defer_t = SDEB_DEFER_NONE;
    spin_unlock_irqrestore(&sqp->qc_lock, iflags);
    stop_qc_helper(sd_dp, l_defer_t);
    clear_bit(k, sqp->in_use_bm);
    return 1;
   }
  }
  spin_unlock_irqrestore(&sqp->qc_lock, iflags);
 }
 return 0;
}
