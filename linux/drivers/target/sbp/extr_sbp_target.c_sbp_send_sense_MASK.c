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
struct se_cmd {scalar_t__ scsi_sense_length; } ;
struct TYPE_2__ {int /*<<< orphan*/  status; } ;
struct sbp_target_request {TYPE_1__ status; struct se_cmd se_cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  SBP_STATUS_OK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_RESP_REQUEST_COMPLETE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct sbp_target_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct sbp_target_request*) ; 

__attribute__((used)) static int FUNC7(struct sbp_target_request *req)
{
	struct se_cmd *se_cmd = &req->se_cmd;

	if (se_cmd->scsi_sense_length) {
		FUNC6(req);
	} else {
		req->status.status |= FUNC4(
			FUNC2(STATUS_RESP_REQUEST_COMPLETE) |
			FUNC0(0) |
			FUNC1(1) |
			FUNC3(SBP_STATUS_OK));
	}

	return FUNC5(req);
}