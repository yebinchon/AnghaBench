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
typedef  union be_tcp_upload_params {int dummy; } be_tcp_upload_params ;
struct be_ctrl_info {int /*<<< orphan*/  mbox_lock; } ;
struct beiscsi_hba {struct be_ctrl_info ctrl; } ;
struct beiscsi_endpoint {scalar_t__ conn; int /*<<< orphan*/  ep_cid; } ;
struct be_tcp_upload_params_in {int /*<<< orphan*/  upload_type; int /*<<< orphan*/  id; int /*<<< orphan*/  hdr; } ;
struct be_mcc_wrb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BE_UPLOAD_TYPE_ABORT ; 
 int /*<<< orphan*/  BE_UPLOAD_TYPE_GRACEFUL ; 
 int /*<<< orphan*/  CMD_COMMON_TCP_UPLOAD ; 
 int /*<<< orphan*/  OPCODE_COMMON_TCP_UPLOAD ; 
 struct be_mcc_wrb* FUNC0 (struct beiscsi_hba*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct beiscsi_hba*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct be_mcc_wrb*,int,int,int /*<<< orphan*/ ) ; 
 struct be_tcp_upload_params_in* FUNC4 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

unsigned int FUNC7(struct beiscsi_hba *phba,
				struct beiscsi_endpoint *beiscsi_ep)
{
	struct be_ctrl_info *ctrl = &phba->ctrl;
	struct be_mcc_wrb *wrb;
	struct be_tcp_upload_params_in *req;
	unsigned int tag;

	FUNC5(&ctrl->mbox_lock);
	wrb = FUNC0(phba, &tag);
	if (!wrb) {
		FUNC6(&ctrl->mbox_lock);
		return 0;
	}

	req = FUNC4(wrb);
	FUNC3(wrb, sizeof(union be_tcp_upload_params), true, 0);
	FUNC1(&req->hdr, CMD_COMMON_TCP_UPLOAD,
			   OPCODE_COMMON_TCP_UPLOAD, sizeof(*req));
	req->id = beiscsi_ep->ep_cid;
	if (beiscsi_ep->conn)
		req->upload_type = BE_UPLOAD_TYPE_GRACEFUL;
	else
		req->upload_type = BE_UPLOAD_TYPE_ABORT;
	FUNC2(phba, tag);
	FUNC6(&ctrl->mbox_lock);
	return tag;
}