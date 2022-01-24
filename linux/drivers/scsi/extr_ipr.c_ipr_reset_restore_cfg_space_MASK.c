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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_10__ {int /*<<< orphan*/  endian_swap_reg; } ;
struct ipr_ioa_cfg {scalar_t__ sdt_state; scalar_t__ in_ioa_bringdown; scalar_t__ ioa_unit_checked; scalar_t__ sis64; TYPE_4__ regs; TYPE_6__* pdev; } ;
struct TYPE_11__ {int /*<<< orphan*/  time_left; } ;
struct TYPE_7__ {int /*<<< orphan*/  ioasc; } ;
struct TYPE_8__ {TYPE_1__ hdr; } ;
struct TYPE_9__ {TYPE_2__ ioasa; } ;
struct ipr_cmnd {int /*<<< orphan*/  job_step; TYPE_5__ u; TYPE_3__ s; struct ipr_ioa_cfg* ioa_cfg; } ;
struct TYPE_12__ {int state_saved; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTER ; 
 scalar_t__ GET_DUMP ; 
 int /*<<< orphan*/  IPR_DUMP_DELAY_TIMEOUT ; 
 int /*<<< orphan*/  IPR_ENDIAN_SWAP_KEY ; 
 int /*<<< orphan*/  IPR_IOASC_PCI_ACCESS_ERROR ; 
 int IPR_RC_JOB_CONTINUE ; 
 int IPR_RC_JOB_RETURN ; 
 int /*<<< orphan*/  IPR_WAIT_FOR_MAILBOX ; 
 int /*<<< orphan*/  LEAVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipr_dump_mailbox_wait ; 
 int /*<<< orphan*/  FUNC1 (struct ipr_ioa_cfg*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipr_ioa_cfg*) ; 
 int /*<<< orphan*/  ipr_ioa_bringdown_done ; 
 int /*<<< orphan*/  ipr_reset_alert ; 
 int /*<<< orphan*/  ipr_reset_enable_ioa ; 
 int /*<<< orphan*/  ipr_reset_get_unit_check_job ; 
 int /*<<< orphan*/  FUNC3 (struct ipr_cmnd*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct ipr_ioa_cfg*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct ipr_cmnd *ipr_cmd)
{
	struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;
	u32 int_reg;

	ENTER;
	ioa_cfg->pdev->state_saved = true;
	FUNC5(ioa_cfg->pdev);

	if (FUNC4(ioa_cfg)) {
		ipr_cmd->s.ioasa.hdr.ioasc = FUNC0(IPR_IOASC_PCI_ACCESS_ERROR);
		return IPR_RC_JOB_CONTINUE;
	}

	FUNC1(ioa_cfg);

	if (ioa_cfg->sis64) {
		/* Set the adapter to the correct endian mode. */
		FUNC7(IPR_ENDIAN_SWAP_KEY, ioa_cfg->regs.endian_swap_reg);
		int_reg = FUNC6(ioa_cfg->regs.endian_swap_reg);
	}

	if (ioa_cfg->ioa_unit_checked) {
		if (ioa_cfg->sis64) {
			ipr_cmd->job_step = ipr_reset_get_unit_check_job;
			FUNC3(ipr_cmd, IPR_DUMP_DELAY_TIMEOUT);
			return IPR_RC_JOB_RETURN;
		} else {
			ioa_cfg->ioa_unit_checked = 0;
			FUNC2(ioa_cfg);
			ipr_cmd->job_step = ipr_reset_alert;
			FUNC3(ipr_cmd, 0);
			return IPR_RC_JOB_RETURN;
		}
	}

	if (ioa_cfg->in_ioa_bringdown) {
		ipr_cmd->job_step = ipr_ioa_bringdown_done;
	} else if (ioa_cfg->sdt_state == GET_DUMP) {
		ipr_cmd->job_step = ipr_dump_mailbox_wait;
		ipr_cmd->u.time_left = IPR_WAIT_FOR_MAILBOX;
	} else {
		ipr_cmd->job_step = ipr_reset_enable_ioa;
	}

	LEAVE;
	return IPR_RC_JOB_CONTINUE;
}