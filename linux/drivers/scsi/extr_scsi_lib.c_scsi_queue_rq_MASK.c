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
struct scsi_device {scalar_t__ sdev_state; int /*<<< orphan*/  device_busy; scalar_t__ simple_tags; struct Scsi_Host* host; } ;
struct scsi_cmnd {int /*<<< orphan*/  scsi_done; int /*<<< orphan*/  flags; int /*<<< orphan*/  state; } ;
struct request_queue {struct scsi_device* queuedata; } ;
struct request {int rq_flags; struct request_queue* q; } ;
struct blk_mq_queue_data {scalar_t__ last; struct request* rq; } ;
struct blk_mq_hw_ctx {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef  int blk_status_t ;
struct TYPE_4__ {int result; } ;
struct TYPE_3__ {scalar_t__ can_queue; int /*<<< orphan*/  target_busy; } ;

/* Variables and functions */
 int BLK_STS_DEV_RESOURCE ; 
#define  BLK_STS_OK 129 
#define  BLK_STS_RESOURCE 128 
 int DID_ERROR ; 
 int DID_NO_CONNECT ; 
 int RQF_DONTPREP ; 
 int /*<<< orphan*/  SCMD_LAST ; 
 int /*<<< orphan*/  SCMD_PRESERVED_FLAGS ; 
 int /*<<< orphan*/  SCMD_STATE_COMPLETE ; 
 int /*<<< orphan*/  SCMD_TAGGED ; 
 scalar_t__ SDEV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct scsi_cmnd* FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_device*) ; 
 int FUNC8 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC9 (struct request_queue*,struct Scsi_Host*,struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  scsi_mq_done ; 
 int FUNC11 (struct request*) ; 
 int /*<<< orphan*/  FUNC12 (struct blk_mq_hw_ctx*) ; 
 int /*<<< orphan*/  FUNC13 (struct scsi_cmnd*) ; 
 int FUNC14 (struct scsi_device*,struct request*) ; 
 TYPE_2__* FUNC15 (struct request*) ; 
 int /*<<< orphan*/  FUNC16 (struct scsi_cmnd*,int) ; 
 TYPE_1__* FUNC17 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct Scsi_Host*,struct scsi_device*) ; 
 scalar_t__ FUNC19 (int) ; 

__attribute__((used)) static blk_status_t FUNC20(struct blk_mq_hw_ctx *hctx,
			 const struct blk_mq_queue_data *bd)
{
	struct request *req = bd->rq;
	struct request_queue *q = req->q;
	struct scsi_device *sdev = q->queuedata;
	struct Scsi_Host *shost = sdev->host;
	struct scsi_cmnd *cmd = FUNC2(req);
	blk_status_t ret;
	int reason;

	/*
	 * If the device is not in running state we will reject some or all
	 * commands.
	 */
	if (FUNC19(sdev->sdev_state != SDEV_RUNNING)) {
		ret = FUNC14(sdev, req);
		if (ret != BLK_STS_OK)
			goto out_put_budget;
	}

	ret = BLK_STS_RESOURCE;
	if (!FUNC18(shost, sdev))
		goto out_put_budget;
	if (!FUNC9(q, shost, sdev))
		goto out_dec_target_busy;

	if (!(req->rq_flags & RQF_DONTPREP)) {
		ret = FUNC11(req);
		if (ret != BLK_STS_OK)
			goto out_dec_host_busy;
		req->rq_flags |= RQF_DONTPREP;
	} else {
		FUNC4(SCMD_STATE_COMPLETE, &cmd->state);
		FUNC3(req);
	}

	cmd->flags &= SCMD_PRESERVED_FLAGS;
	if (sdev->simple_tags)
		cmd->flags |= SCMD_TAGGED;
	if (bd->last)
		cmd->flags |= SCMD_LAST;

	FUNC10(cmd);
	cmd->scsi_done = scsi_mq_done;

	reason = FUNC8(cmd);
	if (reason) {
		FUNC16(cmd, reason);
		ret = BLK_STS_RESOURCE;
		goto out_dec_host_busy;
	}

	return BLK_STS_OK;

out_dec_host_busy:
	FUNC5(shost);
out_dec_target_busy:
	if (FUNC17(sdev)->can_queue > 0)
		FUNC0(&FUNC17(sdev)->target_busy);
out_put_budget:
	FUNC12(hctx);
	switch (ret) {
	case BLK_STS_OK:
		break;
	case BLK_STS_RESOURCE:
		if (FUNC1(&sdev->device_busy) ||
		    FUNC6(sdev))
			ret = BLK_STS_DEV_RESOURCE;
		break;
	default:
		if (FUNC19(!FUNC7(sdev)))
			FUNC15(req)->result = DID_NO_CONNECT << 16;
		else
			FUNC15(req)->result = DID_ERROR << 16;
		/*
		 * Make sure to release all allocated resources when
		 * we hit an error, as we will never see this command
		 * again.
		 */
		if (req->rq_flags & RQF_DONTPREP)
			FUNC13(cmd);
		break;
	}
	return ret;
}