#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct beiscsi_hba {int dummy; } ;
struct be_queue_info {int /*<<< orphan*/  id; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_ctrl_info {int /*<<< orphan*/  mbox_lock; int /*<<< orphan*/  pdev; int /*<<< orphan*/  mbox_mem; } ;
struct be_cmd_req_q_destroy {int /*<<< orphan*/  id; int /*<<< orphan*/  hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_LOG_INIT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int /*<<< orphan*/  CMD_SUBSYSTEM_ISCSI ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  OPCODE_COMMON_CQ_DESTROY ; 
 int /*<<< orphan*/  OPCODE_COMMON_EQ_DESTROY ; 
 int /*<<< orphan*/  OPCODE_COMMON_ISCSI_CFG_REMOVE_SGL_PAGES ; 
 int /*<<< orphan*/  OPCODE_COMMON_ISCSI_DEFQ_DESTROY ; 
 int /*<<< orphan*/  OPCODE_COMMON_ISCSI_WRBQ_DESTROY ; 
 int /*<<< orphan*/  OPCODE_COMMON_MCC_DESTROY ; 
#define  QTYPE_CQ 133 
#define  QTYPE_DPDUQ 132 
#define  QTYPE_EQ 131 
#define  QTYPE_MCCQ 130 
#define  QTYPE_SGL 129 
#define  QTYPE_WRBQ 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct be_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct be_mcc_wrb*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct beiscsi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct be_cmd_req_q_destroy* FUNC6 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC7 (struct be_mcc_wrb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct beiscsi_hba* FUNC10 (int /*<<< orphan*/ ) ; 
 struct be_mcc_wrb* FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct be_ctrl_info *ctrl, struct be_queue_info *q,
			  int queue_type)
{
	struct be_mcc_wrb *wrb = FUNC11(&ctrl->mbox_mem);
	struct be_cmd_req_q_destroy *req = FUNC6(wrb);
	struct beiscsi_hba *phba = FUNC10(ctrl->pdev);
	u8 subsys = 0, opcode = 0;
	int status;

	FUNC4(phba, KERN_INFO, BEISCSI_LOG_INIT,
		    "BC_%d : In beiscsi_cmd_q_destroy "
		    "queue_type : %d\n", queue_type);

	FUNC8(&ctrl->mbox_lock);
	FUNC7(wrb, 0, sizeof(*wrb));
	FUNC3(wrb, sizeof(*req), true, 0);

	switch (queue_type) {
	case QTYPE_EQ:
		subsys = CMD_SUBSYSTEM_COMMON;
		opcode = OPCODE_COMMON_EQ_DESTROY;
		break;
	case QTYPE_CQ:
		subsys = CMD_SUBSYSTEM_COMMON;
		opcode = OPCODE_COMMON_CQ_DESTROY;
		break;
	case QTYPE_MCCQ:
		subsys = CMD_SUBSYSTEM_COMMON;
		opcode = OPCODE_COMMON_MCC_DESTROY;
		break;
	case QTYPE_WRBQ:
		subsys = CMD_SUBSYSTEM_ISCSI;
		opcode = OPCODE_COMMON_ISCSI_WRBQ_DESTROY;
		break;
	case QTYPE_DPDUQ:
		subsys = CMD_SUBSYSTEM_ISCSI;
		opcode = OPCODE_COMMON_ISCSI_DEFQ_DESTROY;
		break;
	case QTYPE_SGL:
		subsys = CMD_SUBSYSTEM_ISCSI;
		opcode = OPCODE_COMMON_ISCSI_CFG_REMOVE_SGL_PAGES;
		break;
	default:
		FUNC9(&ctrl->mbox_lock);
		FUNC0();
	}
	FUNC1(&req->hdr, subsys, opcode, sizeof(*req));
	if (queue_type != QTYPE_SGL)
		req->id = FUNC5(q->id);

	status = FUNC2(ctrl);

	FUNC9(&ctrl->mbox_lock);
	return status;
}