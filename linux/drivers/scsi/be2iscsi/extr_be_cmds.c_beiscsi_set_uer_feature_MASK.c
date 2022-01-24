#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct be_ctrl_info {int /*<<< orphan*/  mbox_lock; int /*<<< orphan*/  mbox_mem; } ;
struct beiscsi_hba {int /*<<< orphan*/  state; int /*<<< orphan*/  ue2rp; struct be_ctrl_info ctrl; } ;
struct be_mcc_wrb {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  ue2rp; } ;
struct TYPE_6__ {int /*<<< orphan*/  uer; } ;
struct TYPE_8__ {TYPE_3__ resp; TYPE_2__ req; } ;
struct TYPE_5__ {int /*<<< orphan*/  req_hdr; } ;
struct be_cmd_set_features {int param_len; TYPE_4__ param; int /*<<< orphan*/  feature; TYPE_1__ h; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_HBA_UER_SUPP ; 
 int /*<<< orphan*/  BEISCSI_LOG_INIT ; 
 int /*<<< orphan*/  BE_CMD_SET_FEATURE_UER ; 
 int /*<<< orphan*/  BE_CMD_UER_SUPP_BIT ; 
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int /*<<< orphan*/  EMBED_MBX_MAX_PAYLOAD_SIZE ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int MCC_STATUS_ILLEGAL_REQUEST ; 
 int MCC_STATUS_INVALID_LENGTH ; 
 int /*<<< orphan*/  OPCODE_COMMON_SET_FEATURES ; 
 int /*<<< orphan*/  FUNC0 (struct beiscsi_hba*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct be_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct be_mcc_wrb*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct be_cmd_set_features* FUNC5 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC6 (struct be_mcc_wrb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct beiscsi_hba *phba)
{
	struct be_ctrl_info *ctrl = &phba->ctrl;
	struct be_cmd_set_features *ioctl;
	struct be_mcc_wrb *wrb;
	int ret = 0;

	FUNC7(&ctrl->mbox_lock);
	wrb = FUNC10(&ctrl->mbox_mem);
	FUNC6(wrb, 0, sizeof(*wrb));
	ioctl = FUNC5(wrb);

	FUNC3(wrb, sizeof(*ioctl), true, 0);
	FUNC1(&ioctl->h.req_hdr, CMD_SUBSYSTEM_COMMON,
			   OPCODE_COMMON_SET_FEATURES,
			   EMBED_MBX_MAX_PAYLOAD_SIZE);
	ioctl->feature = BE_CMD_SET_FEATURE_UER;
	ioctl->param_len = sizeof(ioctl->param.req);
	ioctl->param.req.uer = BE_CMD_UER_SUPP_BIT;
	ret = FUNC2(ctrl);
	if (!ret) {
		phba->ue2rp = ioctl->param.resp.ue2rp;
		FUNC9(BEISCSI_HBA_UER_SUPP, &phba->state);
		FUNC4(phba, KERN_INFO, BEISCSI_LOG_INIT,
			    "BG_%d : HBA error recovery supported\n");
	} else {
		/**
		 * Check "MCC_STATUS_INVALID_LENGTH" for SKH.
		 * Older FW versions return this error.
		 */
		if (ret == MCC_STATUS_ILLEGAL_REQUEST ||
		    ret == MCC_STATUS_INVALID_LENGTH)
			FUNC0(phba, KERN_INFO,
				      "BG_%d : HBA error recovery not supported\n");
	}

	FUNC8(&ctrl->mbox_lock);
	return ret;
}