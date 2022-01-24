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
struct ipr_ioa_cfg {int scsi_unblock; int hrrq_num; int /*<<< orphan*/  reset_wait_q; TYPE_1__* hrrq; scalar_t__ reset_retries; scalar_t__ in_reset_reload; int /*<<< orphan*/  work_q; } ;
struct ipr_cmnd {TYPE_2__* hrrq; int /*<<< orphan*/  queue; struct ipr_ioa_cfg* ioa_cfg; } ;
struct TYPE_4__ {int /*<<< orphan*/  hrrq_free_q; } ;
struct TYPE_3__ {int ioa_is_dead; int /*<<< orphan*/  _lock; int /*<<< orphan*/  removing_ioa; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTER ; 
 size_t IPR_INIT_HRRQ ; 
 int IPR_RC_JOB_RETURN ; 
 int /*<<< orphan*/  LEAVE ; 
 int /*<<< orphan*/  ipr_trace ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct ipr_cmnd *ipr_cmd)
{
	struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;
	int i;

	ENTER;
	if (!ioa_cfg->hrrq[IPR_INIT_HRRQ].removing_ioa) {
		ipr_trace;
		ioa_cfg->scsi_unblock = 1;
		FUNC1(&ioa_cfg->work_q);
	}

	ioa_cfg->in_reset_reload = 0;
	ioa_cfg->reset_retries = 0;
	for (i = 0; i < ioa_cfg->hrrq_num; i++) {
		FUNC2(&ioa_cfg->hrrq[i]._lock);
		ioa_cfg->hrrq[i].ioa_is_dead = 1;
		FUNC3(&ioa_cfg->hrrq[i]._lock);
	}
	FUNC5();

	FUNC0(&ipr_cmd->queue, &ipr_cmd->hrrq->hrrq_free_q);
	FUNC4(&ioa_cfg->reset_wait_q);
	LEAVE;

	return IPR_RC_JOB_RETURN;
}