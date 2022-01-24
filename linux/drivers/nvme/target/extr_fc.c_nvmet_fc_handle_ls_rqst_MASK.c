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
struct nvmet_fc_tgtport {int dummy; } ;
struct nvmet_fc_ls_iod {int /*<<< orphan*/  rspbuf; TYPE_1__* lsreq; int /*<<< orphan*/ * assoc; int /*<<< orphan*/  rspdma; scalar_t__ rqstbuf; } ;
struct fcnvme_ls_rqst_w0 {int ls_cmd; } ;
struct TYPE_2__ {scalar_t__ rsplen; int /*<<< orphan*/  done; int /*<<< orphan*/  rspdma; int /*<<< orphan*/  rspbuf; struct nvmet_fc_ls_iod* nvmet_fc_private; } ;

/* Variables and functions */
#define  FCNVME_LS_CREATE_ASSOCIATION 130 
#define  FCNVME_LS_CREATE_CONNECTION 129 
#define  FCNVME_LS_DISCONNECT 128 
 int /*<<< orphan*/  FCNVME_RJT_EXP_NONE ; 
 int /*<<< orphan*/  FCNVME_RJT_RC_INVAL ; 
 int /*<<< orphan*/  NVME_FC_MAX_LS_BUFFER_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvmet_fc_tgtport*,struct nvmet_fc_ls_iod*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvmet_fc_tgtport*,struct nvmet_fc_ls_iod*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvmet_fc_tgtport*,struct nvmet_fc_ls_iod*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvmet_fc_tgtport*,struct nvmet_fc_ls_iod*) ; 
 int /*<<< orphan*/  nvmet_fc_xmt_ls_rsp_done ; 

__attribute__((used)) static void
FUNC5(struct nvmet_fc_tgtport *tgtport,
			struct nvmet_fc_ls_iod *iod)
{
	struct fcnvme_ls_rqst_w0 *w0 =
			(struct fcnvme_ls_rqst_w0 *)iod->rqstbuf;

	iod->lsreq->nvmet_fc_private = iod;
	iod->lsreq->rspbuf = iod->rspbuf;
	iod->lsreq->rspdma = iod->rspdma;
	iod->lsreq->done = nvmet_fc_xmt_ls_rsp_done;
	/* Be preventative. handlers will later set to valid length */
	iod->lsreq->rsplen = 0;

	iod->assoc = NULL;

	/*
	 * handlers:
	 *   parse request input, execute the request, and format the
	 *   LS response
	 */
	switch (w0->ls_cmd) {
	case FCNVME_LS_CREATE_ASSOCIATION:
		/* Creates Association and initial Admin Queue/Connection */
		FUNC1(tgtport, iod);
		break;
	case FCNVME_LS_CREATE_CONNECTION:
		/* Creates an IO Queue/Connection */
		FUNC2(tgtport, iod);
		break;
	case FCNVME_LS_DISCONNECT:
		/* Terminate a Queue/Connection or the Association */
		FUNC3(tgtport, iod);
		break;
	default:
		iod->lsreq->rsplen = FUNC0(iod->rspbuf,
				NVME_FC_MAX_LS_BUFFER_SIZE, w0->ls_cmd,
				FCNVME_RJT_RC_INVAL, FCNVME_RJT_EXP_NONE, 0);
	}

	FUNC4(tgtport, iod);
}