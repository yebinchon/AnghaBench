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
struct scsi_device {int /*<<< orphan*/  requeue_work; TYPE_1__* host; struct request_queue* request_queue; } ;
struct scsi_cmnd {int flags; int /*<<< orphan*/  rcu; struct scsi_device* device; } ;
struct request_queue {int /*<<< orphan*/  q_usage_counter; } ;
struct request {int /*<<< orphan*/  rq_disk; } ;
typedef  int /*<<< orphan*/  blk_status_t ;
struct TYPE_4__ {scalar_t__ single_lun; } ;
struct TYPE_3__ {int /*<<< orphan*/  starved_list; } ;

/* Variables and functions */
 int SCMD_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct scsi_cmnd* FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (struct request_queue*,int) ; 
 scalar_t__ FUNC5 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC6 (struct request*) ; 
 scalar_t__ FUNC7 (struct request*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct scsi_cmnd*) ; 
 TYPE_2__* FUNC14 (struct scsi_device*) ; 

__attribute__((used)) static bool FUNC15(struct request *req, blk_status_t error,
		unsigned int bytes)
{
	struct scsi_cmnd *cmd = FUNC3(req);
	struct scsi_device *sdev = cmd->device;
	struct request_queue *q = sdev->request_queue;

	if (FUNC7(req, error, bytes))
		return true;

	if (FUNC5(q))
		FUNC2(req->rq_disk);

	if (!FUNC6(req)) {
		FUNC0(!(cmd->flags & SCMD_INITIALIZED));
		cmd->flags &= ~SCMD_INITIALIZED;
	}

	/*
	 * Calling rcu_barrier() is not necessary here because the
	 * SCSI error handler guarantees that the function called by
	 * call_rcu() has been called before scsi_end_request() is
	 * called.
	 */
	FUNC8(&cmd->rcu);

	/*
	 * In the MQ case the command gets freed by __blk_mq_end_request,
	 * so we have to do all cleanup that depends on it earlier.
	 *
	 * We also can't kick the queues from irq context, so we
	 * will have to defer it to a workqueue.
	 */
	FUNC13(cmd);

	/*
	 * queue is still alive, so grab the ref for preventing it
	 * from being cleaned up during running queue.
	 */
	FUNC11(&q->q_usage_counter);

	FUNC1(req, error);

	if (FUNC14(sdev)->single_lun ||
	    !FUNC10(&sdev->host->starved_list))
		FUNC9(&sdev->requeue_work);
	else
		FUNC4(q, true);

	FUNC12(&q->q_usage_counter);
	return false;
}