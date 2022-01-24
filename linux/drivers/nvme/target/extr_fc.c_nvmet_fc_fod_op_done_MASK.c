#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nvmet_fc_tgtport {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  transfer_len; } ;
struct nvmet_fc_fcp_iod {int abort; int writedataactive; int /*<<< orphan*/  queue; TYPE_1__ req; int /*<<< orphan*/  offset; int /*<<< orphan*/  flock; struct nvmet_fc_tgtport* tgtport; struct nvmefc_tgt_fcp_req* fcpreq; } ;
struct nvmefc_tgt_fcp_req {int op; int /*<<< orphan*/  transferred_length; int /*<<< orphan*/  transfer_length; int /*<<< orphan*/  fcp_error; } ;

/* Variables and functions */
#define  NVMET_FCOP_READDATA 131 
#define  NVMET_FCOP_READDATA_RSP 130 
#define  NVMET_FCOP_RSP 129 
#define  NVMET_FCOP_WRITEDATA 128 
 int /*<<< orphan*/  NVME_SC_INTERNAL ; 
 int /*<<< orphan*/  FUNC0 (struct nvmet_fc_fcp_iod*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvmet_fc_tgtport*,struct nvmet_fc_fcp_iod*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct nvmet_fc_fcp_iod*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvmet_fc_fcp_iod*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvmet_fc_tgtport*,struct nvmet_fc_fcp_iod*,int const) ; 
 int /*<<< orphan*/  FUNC5 (struct nvmet_fc_tgtport*,struct nvmet_fc_fcp_iod*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC12(struct nvmet_fc_fcp_iod *fod)
{
	struct nvmefc_tgt_fcp_req *fcpreq = fod->fcpreq;
	struct nvmet_fc_tgtport *tgtport = fod->tgtport;
	unsigned long flags;
	bool abort;

	FUNC9(&fod->flock, flags);
	abort = fod->abort;
	fod->writedataactive = false;
	FUNC11(&fod->flock, flags);

	switch (fcpreq->op) {

	case NVMET_FCOP_WRITEDATA:
		if (FUNC0(fod, abort))
			return;
		if (fcpreq->fcp_error ||
		    fcpreq->transferred_length != fcpreq->transfer_length) {
			FUNC8(&fod->flock);
			fod->abort = true;
			FUNC10(&fod->flock);

			FUNC6(&fod->req, NVME_SC_INTERNAL);
			return;
		}

		fod->offset += fcpreq->transferred_length;
		if (fod->offset != fod->req.transfer_len) {
			FUNC9(&fod->flock, flags);
			fod->writedataactive = true;
			FUNC11(&fod->flock, flags);

			/* transfer the next chunk */
			FUNC4(tgtport, fod,
						NVMET_FCOP_WRITEDATA);
			return;
		}

		/* data transfer complete, resume with nvmet layer */
		FUNC7(&fod->req);
		break;

	case NVMET_FCOP_READDATA:
	case NVMET_FCOP_READDATA_RSP:
		if (FUNC0(fod, abort))
			return;
		if (fcpreq->fcp_error ||
		    fcpreq->transferred_length != fcpreq->transfer_length) {
			FUNC1(tgtport, fod);
			return;
		}

		/* success */

		if (fcpreq->op == NVMET_FCOP_READDATA_RSP) {
			/* data no longer needed */
			FUNC3(fod);
			FUNC2(fod->queue, fod);
			return;
		}

		fod->offset += fcpreq->transferred_length;
		if (fod->offset != fod->req.transfer_len) {
			/* transfer the next chunk */
			FUNC4(tgtport, fod,
						NVMET_FCOP_READDATA);
			return;
		}

		/* data transfer complete, send response */

		/* data no longer needed */
		FUNC3(fod);

		FUNC5(tgtport, fod);

		break;

	case NVMET_FCOP_RSP:
		if (FUNC0(fod, abort))
			return;
		FUNC2(fod->queue, fod);
		break;

	default:
		break;
	}
}