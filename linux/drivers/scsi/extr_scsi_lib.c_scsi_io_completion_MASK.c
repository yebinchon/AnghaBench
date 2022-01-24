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
struct scsi_cmnd {int result; struct request* request; TYPE_1__* device; } ;
struct request_queue {int dummy; } ;
struct request {int dummy; } ;
typedef  scalar_t__ blk_status_t ;
struct TYPE_4__ {int result; } ;
struct TYPE_3__ {struct request_queue* request_queue; } ;

/* Variables and functions */
 scalar_t__ BLK_STS_OK ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 unsigned int FUNC2 (struct request*) ; 
 int FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct scsi_cmnd*,char*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC7 (struct request*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_cmnd*,int) ; 
 int FUNC9 (struct scsi_cmnd*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (struct scsi_cmnd*,struct request_queue*) ; 
 scalar_t__ FUNC11 (struct scsi_cmnd*) ; 
 TYPE_2__* FUNC12 (struct request*) ; 
 scalar_t__ FUNC13 (int) ; 

void FUNC14(struct scsi_cmnd *cmd, unsigned int good_bytes)
{
	int result = cmd->result;
	struct request_queue *q = cmd->device->request_queue;
	struct request *req = cmd->request;
	blk_status_t blk_stat = BLK_STS_OK;

	if (FUNC13(result))	/* a nz result may or may not be an error */
		result = FUNC9(cmd, result, &blk_stat);

	if (FUNC13(FUNC3(req))) {
		/*
		 * scsi_result_to_blk_status may have reset the host_byte
		 */
		FUNC12(req)->result = cmd->result;
	}

	/*
	 * Next deal with any sectors which we were able to correctly
	 * handle.
	 */
	FUNC0(1, FUNC6(KERN_INFO, cmd,
		"%u sectors total, %d bytes done.\n",
		FUNC4(req), good_bytes));

	/*
	 * Next deal with any sectors which we were able to correctly
	 * handle. Failed, zero length commands always need to drop down
	 * to retry code. Fast path should return in this block.
	 */
	if (FUNC5(FUNC2(req) > 0 || blk_stat == BLK_STS_OK)) {
		if (FUNC5(!FUNC7(req, blk_stat, good_bytes)))
			return; /* no bytes remaining */
	}

	/* Kill remainder if no retries. */
	if (FUNC13(blk_stat && FUNC11(cmd))) {
		if (FUNC7(req, blk_stat, FUNC2(req)))
			FUNC1(true,
			    "Bytes remaining after failed, no-retry command");
		return;
	}

	/*
	 * If there had been no error, but we have leftover bytes in the
	 * requeues just queue the command up again.
	 */
	if (FUNC5(result == 0))
		FUNC10(cmd, q);
	else
		FUNC8(cmd, result);
}