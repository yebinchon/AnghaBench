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
struct sdebug_queued_cmd {struct scsi_cmnd* a_cmnd; } ;
struct sdebug_queue {int /*<<< orphan*/  qc_lock; int /*<<< orphan*/  in_use_bm; struct sdebug_queued_cmd* qc_arr; } ;
struct sdebug_dev_info {int /*<<< orphan*/  num_in_q; } ;
struct sdebug_defer {int aborted; int qc_idx; int sqa_idx; scalar_t__ issuing_cpu; int /*<<< orphan*/  defer_t; } ;
struct scsi_cmnd {int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;TYPE_1__* device; } ;
struct TYPE_2__ {scalar_t__ hostdata; } ;

/* Variables and functions */
 int SDEBUG_CANQUEUE ; 
 int /*<<< orphan*/  SDEB_DEFER_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct sdebug_dev_info*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  retired_max_queue ; 
 int /*<<< orphan*/  sdebug_completions ; 
 int sdebug_max_queue ; 
 int /*<<< orphan*/  sdebug_miss_cpus ; 
 struct sdebug_queue* sdebug_q_arr ; 
 scalar_t__ sdebug_statistics ; 
 scalar_t__ sdebug_verbose ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static void FUNC14(struct sdebug_defer *sd_dp)
{
	bool aborted = sd_dp->aborted;
	int qc_idx;
	int retiring = 0;
	unsigned long iflags;
	struct sdebug_queue *sqp;
	struct sdebug_queued_cmd *sqcp;
	struct scsi_cmnd *scp;
	struct sdebug_dev_info *devip;

	sd_dp->defer_t = SDEB_DEFER_NONE;
	if (FUNC13(aborted))
		sd_dp->aborted = false;
	qc_idx = sd_dp->qc_idx;
	sqp = sdebug_q_arr + sd_dp->sqa_idx;
	if (sdebug_statistics) {
		FUNC1(&sdebug_completions);
		if (FUNC8() != sd_dp->issuing_cpu)
			FUNC1(&sdebug_miss_cpus);
	}
	if (FUNC13((qc_idx < 0) || (qc_idx >= SDEBUG_CANQUEUE))) {
		FUNC6("wild qc_idx=%d\n", qc_idx);
		return;
	}
	FUNC9(&sqp->qc_lock, iflags);
	sqcp = &sqp->qc_arr[qc_idx];
	scp = sqcp->a_cmnd;
	if (FUNC13(scp == NULL)) {
		FUNC10(&sqp->qc_lock, iflags);
		FUNC6("scp is NULL, sqa_idx=%d, qc_idx=%d\n",
		       sd_dp->sqa_idx, qc_idx);
		return;
	}
	devip = (struct sdebug_dev_info *)scp->device->hostdata;
	if (FUNC5(devip))
		FUNC0(&devip->num_in_q);
	else
		FUNC6("devip=NULL\n");
	if (FUNC13(FUNC2(&retired_max_queue) > 0))
		retiring = 1;

	sqcp->a_cmnd = NULL;
	if (FUNC13(!FUNC12(qc_idx, sqp->in_use_bm))) {
		FUNC10(&sqp->qc_lock, iflags);
		FUNC6("Unexpected completion\n");
		return;
	}

	if (FUNC13(retiring)) {	/* user has reduced max_queue */
		int k, retval;

		retval = FUNC2(&retired_max_queue);
		if (qc_idx >= retval) {
			FUNC10(&sqp->qc_lock, iflags);
			FUNC6("index %d too large\n", retval);
			return;
		}
		k = FUNC4(sqp->in_use_bm, retval);
		if ((k < sdebug_max_queue) || (k == retval))
			FUNC3(&retired_max_queue, 0);
		else
			FUNC3(&retired_max_queue, k + 1);
	}
	FUNC10(&sqp->qc_lock, iflags);
	if (FUNC13(aborted)) {
		if (sdebug_verbose)
			FUNC7("bypassing scsi_done() due to aborted cmd\n");
		return;
	}
	scp->scsi_done(scp); /* callback to mid level */
}