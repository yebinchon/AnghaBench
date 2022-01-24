#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct ipr_ioa_cfg {TYPE_5__* pdev; } ;
struct ipr_hostrcb {int /*<<< orphan*/  queue; } ;
struct TYPE_7__ {int /*<<< orphan*/  ioasc; } ;
struct TYPE_8__ {TYPE_1__ hdr; } ;
struct TYPE_9__ {TYPE_2__ ioasa; } ;
struct TYPE_12__ {struct ipr_hostrcb* hostrcb; } ;
struct ipr_cmnd {TYPE_4__* hrrq; int /*<<< orphan*/  queue; TYPE_3__ s; TYPE_6__ u; struct ipr_ioa_cfg* ioa_cfg; } ;
struct TYPE_11__ {int /*<<< orphan*/  dev; } ;
struct TYPE_10__ {int /*<<< orphan*/  hrrq_free_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPR_HCAM_CDB_OP_CODE_CONFIG_CHANGE ; 
 scalar_t__ IPR_IOASC_ABORTED_CMD_TERM_BY_HOST ; 
 scalar_t__ IPR_IOASC_IOA_WAS_RESET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ipr_ioa_cfg*,struct ipr_hostrcb*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipr_ioa_cfg*,int /*<<< orphan*/ ,struct ipr_hostrcb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ipr_cmnd *ipr_cmd)
{
	struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;
	struct ipr_hostrcb *hostrcb = ipr_cmd->u.hostrcb;
	u32 ioasc = FUNC0(ipr_cmd->s.ioasa.hdr.ioasc);

	FUNC5(&hostrcb->queue);
	FUNC4(&ipr_cmd->queue, &ipr_cmd->hrrq->hrrq_free_q);

	if (ioasc) {
		if (ioasc != IPR_IOASC_IOA_WAS_RESET &&
		    ioasc != IPR_IOASC_ABORTED_CMD_TERM_BY_HOST)
			FUNC1(&ioa_cfg->pdev->dev,
				"Host RCB failed with IOASC: 0x%08X\n", ioasc);

		FUNC3(ioa_cfg, IPR_HCAM_CDB_OP_CODE_CONFIG_CHANGE, hostrcb);
	} else {
		FUNC2(ioa_cfg, hostrcb);
	}
}