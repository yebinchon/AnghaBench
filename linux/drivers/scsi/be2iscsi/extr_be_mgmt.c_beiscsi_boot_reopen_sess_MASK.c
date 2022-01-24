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
struct TYPE_3__ {unsigned int tag; } ;
struct be_ctrl_info {int /*<<< orphan*/  mbox_lock; TYPE_2__* ptag_state; } ;
struct beiscsi_hba {TYPE_1__ boot_struct; struct be_ctrl_info ctrl; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_reopen_session_resp {int dummy; } ;
struct be_cmd_reopen_session_req {int /*<<< orphan*/  session_handle; int /*<<< orphan*/  reopen_type; int /*<<< orphan*/  hdr; } ;
struct TYPE_4__ {int /*<<< orphan*/  cbfn; int /*<<< orphan*/  tag_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  BE_BOOT_INVALID_SHANDLE ; 
 int /*<<< orphan*/  BE_REOPEN_BOOT_SESSIONS ; 
 int /*<<< orphan*/  CMD_SUBSYSTEM_ISCSI_INI ; 
 int /*<<< orphan*/  MCC_TAG_STATE_ASYNC ; 
 int /*<<< orphan*/  OPCODE_ISCSI_INI_DRIVER_REOPEN_ALL_SESSIONS ; 
 struct be_mcc_wrb* FUNC0 (struct beiscsi_hba*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct beiscsi_hba*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct be_mcc_wrb*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  beiscsi_boot_process_compl ; 
 struct be_cmd_reopen_session_req* FUNC4 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

unsigned int FUNC8(struct beiscsi_hba *phba)
{
	struct be_ctrl_info *ctrl = &phba->ctrl;
	struct be_mcc_wrb *wrb;
	struct be_cmd_reopen_session_req *req;
	unsigned int tag;

	FUNC5(&ctrl->mbox_lock);
	wrb = FUNC0(phba, &tag);
	if (!wrb) {
		FUNC6(&ctrl->mbox_lock);
		return 0;
	}

	req = FUNC4(wrb);
	FUNC3(wrb, sizeof(*req), true, 0);
	FUNC1(&req->hdr, CMD_SUBSYSTEM_ISCSI_INI,
			   OPCODE_ISCSI_INI_DRIVER_REOPEN_ALL_SESSIONS,
			   sizeof(struct be_cmd_reopen_session_resp));
	req->reopen_type = BE_REOPEN_BOOT_SESSIONS;
	req->session_handle = BE_BOOT_INVALID_SHANDLE;

	phba->boot_struct.tag = tag;
	FUNC7(MCC_TAG_STATE_ASYNC, &ctrl->ptag_state[tag].tag_state);
	ctrl->ptag_state[tag].cbfn = beiscsi_boot_process_compl;

	FUNC2(phba, tag);
	FUNC6(&ctrl->mbox_lock);
	return tag;
}