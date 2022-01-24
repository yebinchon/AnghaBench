#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct status_msg {scalar_t__ scsi_status; int /*<<< orphan*/ * variable; } ;
struct st_hba {int dummy; } ;
struct st_ccb {TYPE_1__* cmd; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_3__ {scalar_t__* cmnd; } ;

/* Variables and functions */
 scalar_t__ MGT_CMD ; 
 scalar_t__ SAM_STAT_CHECK_CONDITION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct st_hba *hba,
	struct st_ccb *ccb, struct status_msg *resp)
{
	if (ccb->cmd->cmnd[0] == MGT_CMD &&
		resp->scsi_status != SAM_STAT_CHECK_CONDITION)
		FUNC2(ccb->cmd, FUNC1(ccb->cmd) -
			FUNC0(*(__le32 *)&resp->variable[0]));
}