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
typedef  union be_invalidate_connection_params {int dummy; } be_invalidate_connection_params ;
struct be_ctrl_info {int /*<<< orphan*/  mbox_lock; } ;
struct beiscsi_hba {struct be_ctrl_info ctrl; } ;
struct beiscsi_endpoint {scalar_t__ conn; int /*<<< orphan*/  ep_cid; int /*<<< orphan*/  fw_handle; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_invalidate_connection_params_in {scalar_t__ save_cfg; int /*<<< orphan*/  cleanup_type; int /*<<< orphan*/  cid; int /*<<< orphan*/  session_handle; int /*<<< orphan*/  hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BE_CLEANUP_TYPE_INVALIDATE ; 
 int /*<<< orphan*/  BE_CLEANUP_TYPE_ISSUE_TCP_RST ; 
 int /*<<< orphan*/  CMD_SUBSYSTEM_ISCSI_INI ; 
 int /*<<< orphan*/  OPCODE_ISCSI_INI_DRIVER_INVALIDATE_CONNECTION ; 
 struct be_mcc_wrb* FUNC0 (struct beiscsi_hba*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct beiscsi_hba*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct be_mcc_wrb*,int,int,int /*<<< orphan*/ ) ; 
 struct be_invalidate_connection_params_in* FUNC4 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

unsigned int FUNC7(struct beiscsi_hba *phba,
				    struct beiscsi_endpoint *beiscsi_ep)
{
	struct be_invalidate_connection_params_in *req;
	struct be_ctrl_info *ctrl = &phba->ctrl;
	struct be_mcc_wrb *wrb;
	unsigned int tag = 0;

	FUNC5(&ctrl->mbox_lock);
	wrb = FUNC0(phba, &tag);
	if (!wrb) {
		FUNC6(&ctrl->mbox_lock);
		return 0;
	}

	req = FUNC4(wrb);
	FUNC3(wrb, sizeof(union be_invalidate_connection_params),
			   true, 0);
	FUNC1(&req->hdr, CMD_SUBSYSTEM_ISCSI_INI,
			   OPCODE_ISCSI_INI_DRIVER_INVALIDATE_CONNECTION,
			   sizeof(*req));
	req->session_handle = beiscsi_ep->fw_handle;
	req->cid = beiscsi_ep->ep_cid;
	if (beiscsi_ep->conn)
		req->cleanup_type = BE_CLEANUP_TYPE_INVALIDATE;
	else
		req->cleanup_type = BE_CLEANUP_TYPE_ISSUE_TCP_RST;
	/**
	 * 0 - non-persistent targets
	 * 1 - save session info on flash
	 */
	req->save_cfg = 0;
	FUNC2(phba, tag);
	FUNC6(&ctrl->mbox_lock);
	return tag;
}