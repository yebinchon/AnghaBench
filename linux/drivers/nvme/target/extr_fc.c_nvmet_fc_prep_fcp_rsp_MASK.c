#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct nvmet_fc_tgtport {int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {scalar_t__ transfer_len; } ;
struct nvme_common_command {int flags; } ;
struct TYPE_6__ {struct nvme_common_command common; } ;
struct TYPE_7__ {TYPE_1__ sqe; } ;
struct nvme_completion {int /*<<< orphan*/  sq_head; int /*<<< orphan*/  status; } ;
struct nvme_fc_ersp_iu {void* xfrd_len; void* rsn; int /*<<< orphan*/  iu_len; struct nvme_completion cqe; } ;
struct nvmet_fc_fcp_iod {scalar_t__ offset; int /*<<< orphan*/  rspdma; TYPE_4__* fcpreq; TYPE_5__* queue; TYPE_3__ req; TYPE_2__ cmdiubuf; struct nvme_fc_ersp_iu rspiubuf; } ;
struct nvme_command {int dummy; } ;
struct TYPE_10__ {scalar_t__ ersp_ratio; int /*<<< orphan*/  rsn; int /*<<< orphan*/  zrspcnt; } ;
struct TYPE_9__ {scalar_t__ op; int rsplen; int /*<<< orphan*/  rspdma; struct nvme_fc_ersp_iu* rspaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ NVMET_FCOP_READDATA_RSP ; 
 int NVME_CMD_FUSE_FIRST ; 
 int NVME_CMD_FUSE_SECOND ; 
 int NVME_FC_SIZEOF_ZEROS_RSP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nvme_fc_ersp_iu*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct nvme_command*) ; 
 scalar_t__ FUNC7 (TYPE_5__*,int) ; 

__attribute__((used)) static void
FUNC8(struct nvmet_fc_tgtport *tgtport,
				struct nvmet_fc_fcp_iod *fod)
{
	struct nvme_fc_ersp_iu *ersp = &fod->rspiubuf;
	struct nvme_common_command *sqe = &fod->cmdiubuf.sqe.common;
	struct nvme_completion *cqe = &ersp->cqe;
	u32 *cqewd = (u32 *)cqe;
	bool send_ersp = false;
	u32 rsn, rspcnt, xfr_length;

	if (fod->fcpreq->op == NVMET_FCOP_READDATA_RSP)
		xfr_length = fod->req.transfer_len;
	else
		xfr_length = fod->offset;

	/*
	 * check to see if we can send a 0's rsp.
	 *   Note: to send a 0's response, the NVME-FC host transport will
	 *   recreate the CQE. The host transport knows: sq id, SQHD (last
	 *   seen in an ersp), and command_id. Thus it will create a
	 *   zero-filled CQE with those known fields filled in. Transport
	 *   must send an ersp for any condition where the cqe won't match
	 *   this.
	 *
	 * Here are the FC-NVME mandated cases where we must send an ersp:
	 *  every N responses, where N=ersp_ratio
	 *  force fabric commands to send ersp's (not in FC-NVME but good
	 *    practice)
	 *  normal cmds: any time status is non-zero, or status is zero
	 *     but words 0 or 1 are non-zero.
	 *  the SQ is 90% or more full
	 *  the cmd is a fused command
	 *  transferred data length not equal to cmd iu length
	 */
	rspcnt = FUNC0(&fod->queue->zrspcnt);
	if (!(rspcnt % fod->queue->ersp_ratio) ||
	    FUNC6((struct nvme_command *) sqe) ||
	    xfr_length != fod->req.transfer_len ||
	    (FUNC4(cqe->status) & 0xFFFE) || cqewd[0] || cqewd[1] ||
	    (sqe->flags & (NVME_CMD_FUSE_FIRST | NVME_CMD_FUSE_SECOND)) ||
	    FUNC7(fod->queue, FUNC4(cqe->sq_head)))
		send_ersp = true;

	/* re-set the fields */
	fod->fcpreq->rspaddr = ersp;
	fod->fcpreq->rspdma = fod->rspdma;

	if (!send_ersp) {
		FUNC5(ersp, 0, NVME_FC_SIZEOF_ZEROS_RSP);
		fod->fcpreq->rsplen = NVME_FC_SIZEOF_ZEROS_RSP;
	} else {
		ersp->iu_len = FUNC1(sizeof(*ersp)/sizeof(u32));
		rsn = FUNC0(&fod->queue->rsn);
		ersp->rsn = FUNC2(rsn);
		ersp->xfrd_len = FUNC2(xfr_length);
		fod->fcpreq->rsplen = sizeof(*ersp);
	}

	FUNC3(tgtport->dev, fod->rspdma,
				  sizeof(fod->rspiubuf), DMA_TO_DEVICE);
}