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
typedef  union be_invldt_cmds_params {int dummy; } be_invldt_cmds_params ;
struct invldt_cmds_params_in {int /*<<< orphan*/  icd_count; TYPE_1__* table; int /*<<< orphan*/  cleanup_type; scalar_t__ ref_handle; int /*<<< orphan*/  hdr; } ;
struct invldt_cmd_tbl {int /*<<< orphan*/  cid; int /*<<< orphan*/  icd; } ;
struct be_ctrl_info {TYPE_2__* pdev; int /*<<< orphan*/  mbox_lock; } ;
struct beiscsi_hba {struct be_ctrl_info ctrl; } ;
struct be_sge {void* len; void* pa_lo; void* pa_hi; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_dma_mem {int size; int /*<<< orphan*/  dma; struct invldt_cmds_params_in* va; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  cid; int /*<<< orphan*/  icd; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_LOG_EH ; 
 unsigned int BE_INVLDT_CMD_TBL_SZ ; 
 int /*<<< orphan*/  CMD_ISCSI_COMMAND_INVALIDATE ; 
 int /*<<< orphan*/  CMD_SUBSYSTEM_ISCSI ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  OPCODE_COMMON_ISCSI_ERROR_RECOVERY_INVALIDATE_COMMANDS ; 
 struct be_mcc_wrb* FUNC0 (struct beiscsi_hba*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct beiscsi_hba*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct be_mcc_wrb*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (struct beiscsi_hba*,unsigned int,int /*<<< orphan*/ *,struct be_dma_mem*) ; 
 void* FUNC6 (int) ; 
 struct invldt_cmds_params_in* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,struct invldt_cmds_params_in*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct be_sge* FUNC12 (struct be_mcc_wrb*) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 

int FUNC14(struct beiscsi_hba *phba,
				 struct invldt_cmd_tbl *inv_tbl,
				 unsigned int nents)
{
	struct be_ctrl_info *ctrl = &phba->ctrl;
	struct invldt_cmds_params_in *req;
	struct be_dma_mem nonemb_cmd;
	struct be_mcc_wrb *wrb;
	unsigned int i, tag;
	struct be_sge *sge;
	int rc;

	if (!nents || nents > BE_INVLDT_CMD_TBL_SZ)
		return -EINVAL;

	nonemb_cmd.size = sizeof(union be_invldt_cmds_params);
	nonemb_cmd.va = FUNC7(&phba->ctrl.pdev->dev,
					   nonemb_cmd.size, &nonemb_cmd.dma,
					   GFP_KERNEL);
	if (!nonemb_cmd.va) {
		FUNC4(phba, KERN_ERR, BEISCSI_LOG_EH,
			    "BM_%d : invldt_cmds_params alloc failed\n");
		return -ENOMEM;
	}

	FUNC10(&ctrl->mbox_lock);
	wrb = FUNC0(phba, &tag);
	if (!wrb) {
		FUNC11(&ctrl->mbox_lock);
		FUNC8(&phba->ctrl.pdev->dev, nonemb_cmd.size,
				    nonemb_cmd.va, nonemb_cmd.dma);
		return -ENOMEM;
	}

	req = nonemb_cmd.va;
	FUNC3(wrb, nonemb_cmd.size, false, 1);
	FUNC1(&req->hdr, CMD_SUBSYSTEM_ISCSI,
			OPCODE_COMMON_ISCSI_ERROR_RECOVERY_INVALIDATE_COMMANDS,
			sizeof(*req));
	req->ref_handle = 0;
	req->cleanup_type = CMD_ISCSI_COMMAND_INVALIDATE;
	for (i = 0; i < nents; i++) {
		req->table[i].icd = inv_tbl[i].icd;
		req->table[i].cid = inv_tbl[i].cid;
		req->icd_count++;
	}
	sge = FUNC12(wrb);
	sge->pa_hi = FUNC6(FUNC13(nonemb_cmd.dma));
	sge->pa_lo = FUNC6(FUNC9(nonemb_cmd.dma));
	sge->len = FUNC6(nonemb_cmd.size);

	FUNC2(phba, tag);
	FUNC11(&ctrl->mbox_lock);

	rc = FUNC5(phba, tag, NULL, &nonemb_cmd);
	if (rc != -EBUSY)
		FUNC8(&phba->ctrl.pdev->dev, nonemb_cmd.size,
				    nonemb_cmd.va, nonemb_cmd.dma);
	return rc;
}