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
struct be_ctrl_info {int /*<<< orphan*/  mbox_lock; int /*<<< orphan*/  mbox_mem; } ;
struct beiscsi_hba {struct be_ctrl_info ctrl; } ;
struct be_post_sgl_pages_req {int /*<<< orphan*/  hdr; } ;
struct be_mcc_wrb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int /*<<< orphan*/  OPCODE_COMMON_FUNCTION_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct be_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct be_mcc_wrb*,int,int,int /*<<< orphan*/ ) ; 
 struct be_post_sgl_pages_req* FUNC3 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct beiscsi_hba *phba)
{
	struct be_ctrl_info *ctrl = &phba->ctrl;
	struct be_mcc_wrb *wrb = FUNC6(&ctrl->mbox_mem);
	struct be_post_sgl_pages_req *req;
	int status;

	FUNC4(&ctrl->mbox_lock);

	req = FUNC3(wrb);
	FUNC2(wrb, sizeof(*req), true, 0);
	FUNC0(&req->hdr, CMD_SUBSYSTEM_COMMON,
			   OPCODE_COMMON_FUNCTION_RESET, sizeof(*req));
	status = FUNC1(ctrl);

	FUNC5(&ctrl->mbox_lock);
	return status;
}