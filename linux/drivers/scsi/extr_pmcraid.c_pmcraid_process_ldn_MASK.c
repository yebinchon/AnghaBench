#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_12__ {int /*<<< orphan*/  ignore; } ;
struct TYPE_11__ {int /*<<< orphan*/ * cmd; scalar_t__ hcam; } ;
struct pmcraid_instance {int timestamp_error; TYPE_7__* pdev; TYPE_6__* host; TYPE_5__ ccn; TYPE_4__ ldn; } ;
struct TYPE_10__ {int /*<<< orphan*/  fd_ioasc; } ;
struct pmcraid_hcam_ldn {TYPE_3__ error_log; } ;
struct pmcraid_cmd {TYPE_2__* ioa_cb; struct pmcraid_instance* drv_inst; } ;
struct TYPE_14__ {int /*<<< orphan*/  dev; } ;
struct TYPE_13__ {int /*<<< orphan*/  host_lock; } ;
struct TYPE_8__ {int /*<<< orphan*/  ioasc; } ;
struct TYPE_9__ {TYPE_1__ ioasa; } ;

/* Variables and functions */
 int /*<<< orphan*/  PMCRAID_HCAM_CODE_LOG_DATA ; 
 scalar_t__ PMCRAID_IOASC_IOA_WAS_RESET ; 
 scalar_t__ PMCRAID_IOASC_NR_IOA_RESET_REQUIRED ; 
 scalar_t__ PMCRAID_IOASC_TIME_STAMP_OUT_OF_SYNC ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pmcraid_disable_aen ; 
 int /*<<< orphan*/  FUNC3 (struct pmcraid_instance*) ; 
 struct pmcraid_cmd* FUNC4 (struct pmcraid_instance*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pmcraid_instance*) ; 
 int /*<<< orphan*/  FUNC6 (struct pmcraid_instance*) ; 
 int /*<<< orphan*/  FUNC7 (struct pmcraid_cmd*) ; 
 int /*<<< orphan*/  FUNC8 (struct pmcraid_cmd*) ; 
 int /*<<< orphan*/  FUNC9 (struct pmcraid_cmd*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC12(struct pmcraid_cmd *cmd)
{
	struct pmcraid_instance *pinstance = cmd->drv_inst;
	struct pmcraid_hcam_ldn *ldn_hcam =
			(struct pmcraid_hcam_ldn *)pinstance->ldn.hcam;
	u32 ioasc = FUNC2(cmd->ioa_cb->ioasa.ioasc);
	u32 fd_ioasc = FUNC2(ldn_hcam->error_log.fd_ioasc);
	unsigned long lock_flags;

	/* return the command block back to freepool */
	pinstance->ldn.cmd = NULL;
	FUNC7(cmd);

	/* If driver initiated IOA reset happened while this hcam was pending
	 * with IOA, no need to re-register the hcam as reset engine will do it
	 * once reset sequence is complete
	 */
	if (ioasc == PMCRAID_IOASC_IOA_WAS_RESET ||
	    FUNC0(&pinstance->ccn.ignore) == 1) {
		return;
	} else if (!ioasc) {
		FUNC3(pinstance);
		if (fd_ioasc == PMCRAID_IOASC_NR_IOA_RESET_REQUIRED) {
			FUNC10(pinstance->host->host_lock,
					  lock_flags);
			FUNC5(pinstance);
			FUNC11(pinstance->host->host_lock,
					       lock_flags);
			return;
		}
		if (fd_ioasc == PMCRAID_IOASC_TIME_STAMP_OUT_OF_SYNC) {
			pinstance->timestamp_error = 1;
			FUNC9(cmd);
		}
	} else {
		FUNC1(&pinstance->pdev->dev,
			"Host RCB(LDN) failed with IOASC: 0x%08X\n", ioasc);
	}
	/* send netlink message for HCAM notification if enabled */
	if (!pmcraid_disable_aen)
		FUNC6(pinstance);

	cmd = FUNC4(pinstance, PMCRAID_HCAM_CODE_LOG_DATA);
	if (cmd)
		FUNC8(cmd);
}