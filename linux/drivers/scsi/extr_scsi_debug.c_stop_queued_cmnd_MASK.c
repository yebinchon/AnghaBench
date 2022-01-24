#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sdebug_queued_cmd {struct sdebug_defer* sd_dp; struct scsi_cmnd* a_cmnd; } ;
struct sdebug_queue {int /*<<< orphan*/  qc_lock; int /*<<< orphan*/  in_use_bm; struct sdebug_queued_cmd* qc_arr; } ;
struct sdebug_dev_info {int /*<<< orphan*/  num_in_q; } ;
struct sdebug_defer {int defer_t; } ;
struct scsi_cmnd {TYPE_1__* device; } ;
typedef  enum sdeb_defer_type { ____Placeholder_sdeb_defer_type } sdeb_defer_type ;
struct TYPE_2__ {scalar_t__ hostdata; } ;

/* Variables and functions */
 void* SDEB_DEFER_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  retired_max_queue ; 
 int sdebug_max_queue ; 
 struct sdebug_queue* sdebug_q_arr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct sdebug_defer*,int) ; 
 int submit_queues ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC7(struct scsi_cmnd *cmnd)
{
	unsigned long iflags;
	int j, k, qmax, r_qmax;
	enum sdeb_defer_type l_defer_t;
	struct sdebug_queue *sqp;
	struct sdebug_queued_cmd *sqcp;
	struct sdebug_dev_info *devip;
	struct sdebug_defer *sd_dp;

	for (j = 0, sqp = sdebug_q_arr; j < submit_queues; ++j, ++sqp) {
		FUNC3(&sqp->qc_lock, iflags);
		qmax = sdebug_max_queue;
		r_qmax = FUNC1(&retired_max_queue);
		if (r_qmax > qmax)
			qmax = r_qmax;
		for (k = 0; k < qmax; ++k) {
			if (FUNC6(k, sqp->in_use_bm)) {
				sqcp = &sqp->qc_arr[k];
				if (cmnd != sqcp->a_cmnd)
					continue;
				/* found */
				devip = (struct sdebug_dev_info *)
						cmnd->device->hostdata;
				if (devip)
					FUNC0(&devip->num_in_q);
				sqcp->a_cmnd = NULL;
				sd_dp = sqcp->sd_dp;
				if (sd_dp) {
					l_defer_t = sd_dp->defer_t;
					sd_dp->defer_t = SDEB_DEFER_NONE;
				} else
					l_defer_t = SDEB_DEFER_NONE;
				FUNC4(&sqp->qc_lock, iflags);
				FUNC5(sd_dp, l_defer_t);
				FUNC2(k, sqp->in_use_bm);
				return true;
			}
		}
		FUNC4(&sqp->qc_lock, iflags);
	}
	return false;
}