#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sdebug_queued_cmd {struct sdebug_defer* sd_dp; TYPE_2__* a_cmnd; } ;
struct sdebug_queue {int /*<<< orphan*/  qc_lock; int /*<<< orphan*/  in_use_bm; struct sdebug_queued_cmd* qc_arr; } ;
struct sdebug_dev_info {int /*<<< orphan*/  num_in_q; } ;
struct sdebug_defer {int defer_t; } ;
typedef  enum sdeb_defer_type { ____Placeholder_sdeb_defer_type } sdeb_defer_type ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {scalar_t__ hostdata; } ;

/* Variables and functions */
 int SDEBUG_CANQUEUE ; 
 void* SDEB_DEFER_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct sdebug_queue* sdebug_q_arr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct sdebug_defer*,int) ; 
 int submit_queues ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void)
{
	unsigned long iflags;
	int j, k;
	enum sdeb_defer_type l_defer_t;
	struct sdebug_queue *sqp;
	struct sdebug_queued_cmd *sqcp;
	struct sdebug_dev_info *devip;
	struct sdebug_defer *sd_dp;

	for (j = 0, sqp = sdebug_q_arr; j < submit_queues; ++j, ++sqp) {
		FUNC2(&sqp->qc_lock, iflags);
		for (k = 0; k < SDEBUG_CANQUEUE; ++k) {
			if (FUNC5(k, sqp->in_use_bm)) {
				sqcp = &sqp->qc_arr[k];
				if (sqcp->a_cmnd == NULL)
					continue;
				devip = (struct sdebug_dev_info *)
					sqcp->a_cmnd->device->hostdata;
				if (devip)
					FUNC0(&devip->num_in_q);
				sqcp->a_cmnd = NULL;
				sd_dp = sqcp->sd_dp;
				if (sd_dp) {
					l_defer_t = sd_dp->defer_t;
					sd_dp->defer_t = SDEB_DEFER_NONE;
				} else
					l_defer_t = SDEB_DEFER_NONE;
				FUNC3(&sqp->qc_lock, iflags);
				FUNC4(sd_dp, l_defer_t);
				FUNC1(k, sqp->in_use_bm);
				FUNC2(&sqp->qc_lock, iflags);
			}
		}
		FUNC3(&sqp->qc_lock, iflags);
	}
}