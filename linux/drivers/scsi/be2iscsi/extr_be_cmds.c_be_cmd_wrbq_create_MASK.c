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
typedef  int /*<<< orphan*/  uint8_t ;
struct hwi_wrb_context {int /*<<< orphan*/  doorbell_offset; int /*<<< orphan*/  ulp_num; int /*<<< orphan*/  cid; } ;
struct TYPE_2__ {scalar_t__ dual_ulp_aware; } ;
struct beiscsi_hba {TYPE_1__ fw_config; } ;
struct be_wrbq_create_resp {int /*<<< orphan*/  doorbell_offset; int /*<<< orphan*/  ulp_num; int /*<<< orphan*/  cid; } ;
struct be_wrbq_create_req {int dua_feature; int /*<<< orphan*/  pages; int /*<<< orphan*/  ulp_num; int /*<<< orphan*/  num_pages; int /*<<< orphan*/  hdr; } ;
struct be_queue_info {int created; int /*<<< orphan*/  id; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_dma_mem {int /*<<< orphan*/  size; int /*<<< orphan*/  va; } ;
struct be_ctrl_info {int /*<<< orphan*/  mbox_lock; int /*<<< orphan*/  pdev; int /*<<< orphan*/  mbox_mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int BEISCSI_BIND_Q_TO_ULP_BIT ; 
 int BEISCSI_DUAL_ULP_AWARE_BIT ; 
 int /*<<< orphan*/  BEISCSI_ULP0 ; 
 int /*<<< orphan*/  CMD_SUBSYSTEM_ISCSI ; 
 int /*<<< orphan*/  DB_TXULP0_OFFSET ; 
 int /*<<< orphan*/  OPCODE_COMMON_ISCSI_WRBQ_CREATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct be_dma_mem*) ; 
 int FUNC4 (struct be_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct be_mcc_wrb*,int,int,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct be_mcc_wrb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct beiscsi_hba* FUNC11 (int /*<<< orphan*/ ) ; 
 struct be_mcc_wrb* FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(struct be_ctrl_info *ctrl,
			struct be_dma_mem *q_mem,
			struct be_queue_info *wrbq,
			struct hwi_wrb_context *pwrb_context,
			uint8_t ulp_num)
{
	struct be_mcc_wrb *wrb = FUNC12(&ctrl->mbox_mem);
	struct be_wrbq_create_req *req = FUNC6(wrb);
	struct be_wrbq_create_resp *resp = FUNC6(wrb);
	struct beiscsi_hba *phba = FUNC11(ctrl->pdev);
	int status;

	FUNC9(&ctrl->mbox_lock);
	FUNC8(wrb, 0, sizeof(*wrb));

	FUNC5(wrb, sizeof(*req), true, 0);

	FUNC2(&req->hdr, CMD_SUBSYSTEM_ISCSI,
		OPCODE_COMMON_ISCSI_WRBQ_CREATE, sizeof(*req));
	req->num_pages = FUNC1(q_mem->va, q_mem->size);

	if (phba->fw_config.dual_ulp_aware) {
		req->ulp_num = ulp_num;
		req->dua_feature |= (1 << BEISCSI_DUAL_ULP_AWARE_BIT);
		req->dua_feature |= (1 << BEISCSI_BIND_Q_TO_ULP_BIT);
	}

	FUNC3(req->pages, FUNC0(req->pages), q_mem);

	status = FUNC4(ctrl);
	if (!status) {
		wrbq->id = FUNC7(resp->cid);
		wrbq->created = true;

		pwrb_context->cid = wrbq->id;
		if (!phba->fw_config.dual_ulp_aware) {
			pwrb_context->doorbell_offset = DB_TXULP0_OFFSET;
			pwrb_context->ulp_num = BEISCSI_ULP0;
		} else {
			pwrb_context->ulp_num = resp->ulp_num;
			pwrb_context->doorbell_offset = resp->doorbell_offset;
		}
	}
	FUNC10(&ctrl->mbox_lock);
	return status;
}