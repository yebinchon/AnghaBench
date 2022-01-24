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
struct be_dma_mem {int size; int dma; struct be_cmd_get_session_req* va; } ;
struct TYPE_5__ {unsigned int tag; int /*<<< orphan*/  s_handle; struct be_dma_mem nonemb_cmd; } ;
struct be_ctrl_info {int /*<<< orphan*/  mbox_lock; TYPE_3__* ptag_state; TYPE_1__* pdev; } ;
struct beiscsi_hba {TYPE_2__ boot_struct; struct be_ctrl_info ctrl; } ;
struct be_sge {void* len; void* pa_lo; void* pa_hi; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_get_session_resp {int dummy; } ;
struct be_cmd_get_session_req {int /*<<< orphan*/  session_handle; int /*<<< orphan*/  hdr; } ;
struct TYPE_6__ {int /*<<< orphan*/  cbfn; int /*<<< orphan*/  tag_state; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUBSYSTEM_ISCSI_INI ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MCC_TAG_STATE_ASYNC ; 
 int /*<<< orphan*/  OPCODE_ISCSI_INI_SESSION_GET_A_SESSION ; 
 struct be_mcc_wrb* FUNC0 (struct beiscsi_hba*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct beiscsi_hba*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct be_mcc_wrb*,int,int,int) ; 
 int /*<<< orphan*/  beiscsi_boot_process_compl ; 
 void* FUNC4 (int) ; 
 struct be_cmd_get_session_req* FUNC5 (int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct be_cmd_get_session_req*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct be_sge* FUNC9 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (int) ; 

unsigned int FUNC12(struct beiscsi_hba *phba)
{
	struct be_ctrl_info *ctrl = &phba->ctrl;
	struct be_cmd_get_session_req *req;
	struct be_dma_mem *nonemb_cmd;
	struct be_mcc_wrb *wrb;
	struct be_sge *sge;
	unsigned int tag;

	FUNC7(&ctrl->mbox_lock);
	wrb = FUNC0(phba, &tag);
	if (!wrb) {
		FUNC8(&ctrl->mbox_lock);
		return 0;
	}

	nonemb_cmd = &phba->boot_struct.nonemb_cmd;
	nonemb_cmd->size = sizeof(struct be_cmd_get_session_resp);
	nonemb_cmd->va = FUNC5(&phba->ctrl.pdev->dev,
					      nonemb_cmd->size,
					      &nonemb_cmd->dma,
					      GFP_KERNEL);
	if (!nonemb_cmd->va) {
		FUNC8(&ctrl->mbox_lock);
		return 0;
	}

	req = nonemb_cmd->va;
	FUNC6(req, 0, sizeof(*req));
	sge = FUNC9(wrb);
	FUNC3(wrb, sizeof(*req), false, 1);
	FUNC1(&req->hdr, CMD_SUBSYSTEM_ISCSI_INI,
			   OPCODE_ISCSI_INI_SESSION_GET_A_SESSION,
			   sizeof(struct be_cmd_get_session_resp));
	req->session_handle = phba->boot_struct.s_handle;
	sge->pa_hi = FUNC4(FUNC11(nonemb_cmd->dma));
	sge->pa_lo = FUNC4(nonemb_cmd->dma & 0xFFFFFFFF);
	sge->len = FUNC4(nonemb_cmd->size);

	phba->boot_struct.tag = tag;
	FUNC10(MCC_TAG_STATE_ASYNC, &ctrl->ptag_state[tag].tag_state);
	ctrl->ptag_state[tag].cbfn = beiscsi_boot_process_compl;

	FUNC2(phba, tag);
	FUNC8(&ctrl->mbox_lock);
	return tag;
}