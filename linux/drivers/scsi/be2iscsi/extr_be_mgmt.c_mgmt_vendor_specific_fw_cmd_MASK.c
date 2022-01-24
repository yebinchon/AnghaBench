#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned short* vendor_cmd; } ;
struct TYPE_5__ {TYPE_1__ h_vendor; } ;
struct iscsi_bsg_request {TYPE_2__ rqst_data; } ;
struct TYPE_6__ {int payload_len; int /*<<< orphan*/  sg_cnt; int /*<<< orphan*/  sg_list; } ;
struct bsg_job {TYPE_3__ request_payload; int /*<<< orphan*/  request_len; struct iscsi_bsg_request* request; } ;
struct beiscsi_hba {int dummy; } ;
struct be_sge {void* len; void* pa_lo; void* pa_hi; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_dma_mem {int size; int dma; struct be_bsg_vendor_cmd* va; } ;
struct be_ctrl_info {int /*<<< orphan*/  mbox_lock; } ;
struct be_bsg_vendor_cmd {unsigned short region; unsigned short sector; unsigned short offset; int /*<<< orphan*/  hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_LOG_CONFIG ; 
#define  BEISCSI_READ_FLASH 129 
#define  BEISCSI_WRITE_FLASH 128 
 int /*<<< orphan*/  CMD_SUBSYSTEM_ISCSI ; 
 unsigned int EPERM ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  OPCODE_COMMON_READ_FLASH ; 
 int /*<<< orphan*/  OPCODE_COMMON_WRITE_FLASH ; 
 struct be_mcc_wrb* FUNC0 (struct beiscsi_hba*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct beiscsi_hba*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct be_mcc_wrb*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,short) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct be_bsg_vendor_cmd*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct be_sge* FUNC9 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct be_bsg_vendor_cmd*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int) ; 

unsigned int FUNC12(struct be_ctrl_info *ctrl,
					 struct beiscsi_hba *phba,
					 struct bsg_job *job,
					 struct be_dma_mem *nonemb_cmd)
{
	struct be_mcc_wrb *wrb;
	struct be_sge *mcc_sge;
	unsigned int tag = 0;
	struct iscsi_bsg_request *bsg_req = job->request;
	struct be_bsg_vendor_cmd *req = nonemb_cmd->va;
	unsigned short region, sector_size, sector, offset;

	nonemb_cmd->size = job->request_payload.payload_len;
	FUNC6(nonemb_cmd->va, 0, nonemb_cmd->size);
	region =  bsg_req->rqst_data.h_vendor.vendor_cmd[1];
	sector_size =  bsg_req->rqst_data.h_vendor.vendor_cmd[2];
	sector =  bsg_req->rqst_data.h_vendor.vendor_cmd[3];
	offset =  bsg_req->rqst_data.h_vendor.vendor_cmd[4];
	req->region = region;
	req->sector = sector;
	req->offset = offset;

	if (FUNC7(&ctrl->mbox_lock))
		return 0;
	switch (bsg_req->rqst_data.h_vendor.vendor_cmd[0]) {
	case BEISCSI_WRITE_FLASH:
		offset = sector * sector_size + offset;
		FUNC1(&req->hdr, CMD_SUBSYSTEM_ISCSI,
				   OPCODE_COMMON_WRITE_FLASH, sizeof(*req));
		FUNC10(job->request_payload.sg_list,
				  job->request_payload.sg_cnt,
				  nonemb_cmd->va + offset, job->request_len);
		break;
	case BEISCSI_READ_FLASH:
		FUNC1(&req->hdr, CMD_SUBSYSTEM_ISCSI,
			   OPCODE_COMMON_READ_FLASH, sizeof(*req));
		break;
	default:
		FUNC4(phba, KERN_WARNING, BEISCSI_LOG_CONFIG,
			    "BG_%d : Unsupported cmd = 0x%x\n\n",
			    bsg_req->rqst_data.h_vendor.vendor_cmd[0]);

		FUNC8(&ctrl->mbox_lock);
		return -EPERM;
	}

	wrb = FUNC0(phba, &tag);
	if (!wrb) {
		FUNC8(&ctrl->mbox_lock);
		return 0;
	}

	mcc_sge = FUNC9(wrb);
	FUNC3(wrb, nonemb_cmd->size, false,
			   job->request_payload.sg_cnt);
	mcc_sge->pa_hi = FUNC5(FUNC11(nonemb_cmd->dma));
	mcc_sge->pa_lo = FUNC5(nonemb_cmd->dma & 0xFFFFFFFF);
	mcc_sge->len = FUNC5(nonemb_cmd->size);

	FUNC2(phba, tag);

	FUNC8(&ctrl->mbox_lock);
	return tag;
}