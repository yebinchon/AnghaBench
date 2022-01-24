#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct scsi_cmnd {int cmd_len; int /*<<< orphan*/ * cmnd; TYPE_2__* device; int /*<<< orphan*/ * host_scribble; void* result; int /*<<< orphan*/  sense_buffer; TYPE_1__* request; } ;
struct asc_board {int /*<<< orphan*/  dev; scalar_t__ adv_reqp_addr; TYPE_3__* adv_reqp; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_14__ {size_t srb_tag; int cdb_len; void* data_cnt; scalar_t__ sg_real_addr; int /*<<< orphan*/ * sg_list_ptr; scalar_t__ data_addr; int /*<<< orphan*/  sense_len; void* sense_addr; int /*<<< orphan*/  target_lun; int /*<<< orphan*/  target_id; int /*<<< orphan*/  cdb16; int /*<<< orphan*/  cdb; scalar_t__ done_status; scalar_t__ scsi_cntl; scalar_t__ cntl; } ;
struct TYPE_13__ {struct scsi_cmnd* cmndp; int /*<<< orphan*/ * sgblkp; TYPE_4__ scsi_req_q; scalar_t__ req_addr; } ;
typedef  TYPE_3__ adv_req_t ;
struct TYPE_15__ {int /*<<< orphan*/  sg_tablesize; } ;
struct TYPE_12__ {TYPE_8__* host; int /*<<< orphan*/  lun; int /*<<< orphan*/  id; } ;
struct TYPE_11__ {size_t tag; } ;
typedef  TYPE_4__ ADV_SCSI_REQ_Q ;

/* Variables and functions */
 int ADV_MAX_SG_LIST ; 
 int ADV_SUCCESS ; 
 int ASC_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,int) ; 
 int ASC_ERROR ; 
 int ASC_NOERROR ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DID_ERROR ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 int /*<<< orphan*/  adv_build_noreq ; 
 int FUNC6 (struct asc_board*,TYPE_3__*,TYPE_4__*,struct scsi_cmnd*,int) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct scsi_cmnd*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct scsi_cmnd*) ; 
 int FUNC13 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC14 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  xfer_cnt ; 
 int /*<<< orphan*/  xfer_elem ; 

__attribute__((used)) static int
FUNC15(struct asc_board *boardp, struct scsi_cmnd *scp,
	      adv_req_t **adv_reqpp)
{
	u32 srb_tag = scp->request->tag;
	adv_req_t *reqp;
	ADV_SCSI_REQ_Q *scsiqp;
	int ret;
	int use_sg;
	dma_addr_t sense_addr;

	/*
	 * Allocate an adv_req_t structure from the board to execute
	 * the command.
	 */
	reqp = &boardp->adv_reqp[srb_tag];
	if (reqp->cmndp && reqp->cmndp != scp ) {
		FUNC0(1, "no free adv_req_t\n");
		FUNC3(scp->device->host, adv_build_noreq);
		return ASC_BUSY;
	}

	reqp->req_addr = boardp->adv_reqp_addr + (srb_tag * sizeof(adv_req_t));

	scsiqp = &reqp->scsi_req_q;

	/*
	 * Initialize the structure.
	 */
	scsiqp->cntl = scsiqp->scsi_cntl = scsiqp->done_status = 0;

	/*
	 * Set the srb_tag to the command tag.
	 */
	scsiqp->srb_tag = srb_tag;

	/*
	 * Set 'host_scribble' to point to the adv_req_t structure.
	 */
	reqp->cmndp = scp;
	scp->host_scribble = (void *)reqp;

	/*
	 * Build the ADV_SCSI_REQ_Q request.
	 */

	/* Set CDB length and copy it to the request structure.  */
	scsiqp->cdb_len = scp->cmd_len;
	/* Copy first 12 CDB bytes to cdb[]. */
	FUNC10(scsiqp->cdb, scp->cmnd, scp->cmd_len < 12 ? scp->cmd_len : 12);
	/* Copy last 4 CDB bytes, if present, to cdb16[]. */
	if (scp->cmd_len > 12) {
		int cdb16_len = scp->cmd_len - 12;

		FUNC10(scsiqp->cdb16, &scp->cmnd[12], cdb16_len);
	}

	scsiqp->target_id = scp->device->id;
	scsiqp->target_lun = scp->device->lun;

	sense_addr = FUNC8(boardp->dev, scp->sense_buffer,
				    SCSI_SENSE_BUFFERSIZE, DMA_FROM_DEVICE);
	if (FUNC9(boardp->dev, sense_addr)) {
		FUNC0(1, "failed to map sense buffer\n");
		FUNC3(scp->device->host, adv_build_noreq);
		return ASC_BUSY;
	}
	scsiqp->sense_addr = FUNC7(sense_addr);
	scsiqp->sense_len = SCSI_SENSE_BUFFERSIZE;

	/* Build ADV_SCSI_REQ_Q */

	use_sg = FUNC13(scp);
	if (use_sg < 0) {
		FUNC0(1, "failed to map SG list\n");
		FUNC3(scp->device->host, adv_build_noreq);
		return ASC_BUSY;
	} else if (use_sg == 0) {
		/* Zero-length transfer */
		reqp->sgblkp = NULL;
		scsiqp->data_cnt = 0;

		scsiqp->data_addr = 0;
		scsiqp->sg_list_ptr = NULL;
		scsiqp->sg_real_addr = 0;
	} else {
		if (use_sg > ADV_MAX_SG_LIST) {
			FUNC11(KERN_ERR, scp, "use_sg %d > "
				   "ADV_MAX_SG_LIST %d\n", use_sg,
				   scp->device->host->sg_tablesize);
			FUNC14(scp);
			scp->result = FUNC5(DID_ERROR);
			reqp->cmndp = NULL;
			scp->host_scribble = NULL;

			return ASC_ERROR;
		}

		scsiqp->data_cnt = FUNC7(FUNC12(scp));

		ret = FUNC6(boardp, reqp, scsiqp, scp, use_sg);
		if (ret != ADV_SUCCESS) {
			FUNC14(scp);
			scp->result = FUNC5(DID_ERROR);
			reqp->cmndp = NULL;
			scp->host_scribble = NULL;

			return ret;
		}

		FUNC4(scp->device->host, xfer_elem, use_sg);
	}

	FUNC3(scp->device->host, xfer_cnt);

	FUNC1(2, scsiqp);
	FUNC2(1, scp->cmnd, scp->cmd_len);

	*adv_reqpp = reqp;

	return ASC_NOERROR;
}