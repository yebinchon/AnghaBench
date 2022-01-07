
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sdebug_queued_cmd {struct sdebug_defer* sd_dp; TYPE_2__* a_cmnd; } ;
struct sdebug_queue {int qc_lock; int in_use_bm; struct sdebug_queued_cmd* qc_arr; } ;
struct sdebug_dev_info {int num_in_q; } ;
struct sdebug_defer {int defer_t; } ;
typedef enum sdeb_defer_type { ____Placeholder_sdeb_defer_type } sdeb_defer_type ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {scalar_t__ hostdata; } ;


 int SDEBUG_CANQUEUE ;
 void* SDEB_DEFER_NONE ;
 int atomic_dec (int *) ;
 int clear_bit (int,int ) ;
 struct sdebug_queue* sdebug_q_arr ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stop_qc_helper (struct sdebug_defer*,int) ;
 int submit_queues ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static void stop_all_queued(void)
{
 unsigned long iflags;
 int j, k;
 enum sdeb_defer_type l_defer_t;
 struct sdebug_queue *sqp;
 struct sdebug_queued_cmd *sqcp;
 struct sdebug_dev_info *devip;
 struct sdebug_defer *sd_dp;

 for (j = 0, sqp = sdebug_q_arr; j < submit_queues; ++j, ++sqp) {
  spin_lock_irqsave(&sqp->qc_lock, iflags);
  for (k = 0; k < SDEBUG_CANQUEUE; ++k) {
   if (test_bit(k, sqp->in_use_bm)) {
    sqcp = &sqp->qc_arr[k];
    if (sqcp->a_cmnd == ((void*)0))
     continue;
    devip = (struct sdebug_dev_info *)
     sqcp->a_cmnd->device->hostdata;
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
    spin_lock_irqsave(&sqp->qc_lock, iflags);
   }
  }
  spin_unlock_irqrestore(&sqp->qc_lock, iflags);
 }
}
