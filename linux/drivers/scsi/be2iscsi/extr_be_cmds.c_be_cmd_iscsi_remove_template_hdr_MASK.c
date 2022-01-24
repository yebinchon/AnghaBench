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
struct be_remove_template_pages_req {int /*<<< orphan*/  type; int /*<<< orphan*/  hdr; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_ctrl_info {int /*<<< orphan*/  mbox_lock; int /*<<< orphan*/  mbox_mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_TEMPLATE_HDR_TYPE_ISCSI ; 
 int /*<<< orphan*/  CMD_SUBSYSTEM_COMMON ; 
 int /*<<< orphan*/  OPCODE_COMMON_REMOVE_TEMPLATE_HEADER_BUFFERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct be_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct be_mcc_wrb*,int,int,int /*<<< orphan*/ ) ; 
 struct be_remove_template_pages_req* FUNC3 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC4 (struct be_mcc_wrb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct be_mcc_wrb* FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct be_ctrl_info *ctrl)
{
	struct be_mcc_wrb *wrb = FUNC7(&ctrl->mbox_mem);
	struct be_remove_template_pages_req *req = FUNC3(wrb);
	int status;

	FUNC5(&ctrl->mbox_lock);

	FUNC4(wrb, 0, sizeof(*wrb));
	FUNC2(wrb, sizeof(*req), true, 0);
	FUNC0(&req->hdr, CMD_SUBSYSTEM_COMMON,
			   OPCODE_COMMON_REMOVE_TEMPLATE_HEADER_BUFFERS,
			   sizeof(*req));

	req->type = BEISCSI_TEMPLATE_HDR_TYPE_ISCSI;

	status = FUNC1(ctrl);
	FUNC6(&ctrl->mbox_lock);
	return status;
}