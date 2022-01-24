#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_7__ {int /*<<< orphan*/  sense_interrupt_mask_reg; int /*<<< orphan*/  clr_interrupt_mask_reg32; int /*<<< orphan*/  clr_interrupt_mask_reg; int /*<<< orphan*/  set_uproc_interrupt_reg32; int /*<<< orphan*/  sense_interrupt_reg32; int /*<<< orphan*/  endian_swap_reg; } ;
struct ipr_ioa_cfg {int hrrq_num; int volatile doorbell; int transop_timeout; scalar_t__ sis64; TYPE_3__* pdev; TYPE_2__ regs; TYPE_1__* hrrq; } ;
struct TYPE_10__ {int /*<<< orphan*/  function; scalar_t__ expires; } ;
struct ipr_cmnd {TYPE_4__* hrrq; int /*<<< orphan*/  queue; TYPE_5__ timer; int /*<<< orphan*/  done; int /*<<< orphan*/  job_step; struct ipr_ioa_cfg* ioa_cfg; } ;
struct TYPE_9__ {int /*<<< orphan*/  hrrq_pending_q; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int allow_interrupts; int /*<<< orphan*/  _lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTER ; 
 int HZ ; 
 int volatile IPR_ENDIAN_SWAP_KEY ; 
 int volatile IPR_PCII_ERROR_INTERRUPTS ; 
 int volatile IPR_PCII_HRRQ_UPDATED ; 
 int volatile IPR_PCII_IOA_TRANS_TO_OPER ; 
 int IPR_PCII_IPL_STAGE_CHANGE ; 
 int volatile IPR_PCII_OPER_INTERRUPTS ; 
 int IPR_RC_JOB_CONTINUE ; 
 int IPR_RC_JOB_RETURN ; 
 int /*<<< orphan*/  LEAVE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipr_ioa_cfg*) ; 
 int /*<<< orphan*/  ipr_ioafp_identify_hrrq ; 
 int /*<<< orphan*/  ipr_oper_timeout ; 
 int /*<<< orphan*/  ipr_reset_ioa_job ; 
 int /*<<< orphan*/  ipr_reset_next_stage ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int volatile,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int volatile,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct ipr_cmnd *ipr_cmd)
{
	struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;
	volatile u32 int_reg;
	volatile u64 maskval;
	int i;

	ENTER;
	ipr_cmd->job_step = ipr_ioafp_identify_hrrq;
	FUNC2(ioa_cfg);

	for (i = 0; i < ioa_cfg->hrrq_num; i++) {
		FUNC5(&ioa_cfg->hrrq[i]._lock);
		ioa_cfg->hrrq[i].allow_interrupts = 1;
		FUNC6(&ioa_cfg->hrrq[i]._lock);
	}
	if (ioa_cfg->sis64) {
		/* Set the adapter to the correct endian mode. */
		FUNC7(IPR_ENDIAN_SWAP_KEY, ioa_cfg->regs.endian_swap_reg);
		int_reg = FUNC4(ioa_cfg->regs.endian_swap_reg);
	}

	int_reg = FUNC4(ioa_cfg->regs.sense_interrupt_reg32);

	if (int_reg & IPR_PCII_IOA_TRANS_TO_OPER) {
		FUNC7((IPR_PCII_ERROR_INTERRUPTS | IPR_PCII_HRRQ_UPDATED),
		       ioa_cfg->regs.clr_interrupt_mask_reg32);
		int_reg = FUNC4(ioa_cfg->regs.sense_interrupt_mask_reg);
		return IPR_RC_JOB_CONTINUE;
	}

	/* Enable destructive diagnostics on IOA */
	FUNC7(ioa_cfg->doorbell, ioa_cfg->regs.set_uproc_interrupt_reg32);

	if (ioa_cfg->sis64) {
		maskval = IPR_PCII_IPL_STAGE_CHANGE;
		maskval = (maskval << 32) | IPR_PCII_OPER_INTERRUPTS;
		FUNC8(maskval, ioa_cfg->regs.clr_interrupt_mask_reg);
	} else
		FUNC7(IPR_PCII_OPER_INTERRUPTS, ioa_cfg->regs.clr_interrupt_mask_reg32);

	int_reg = FUNC4(ioa_cfg->regs.sense_interrupt_mask_reg);

	FUNC1(&ioa_cfg->pdev->dev, "Initializing IOA.\n");

	if (ioa_cfg->sis64) {
		ipr_cmd->job_step = ipr_reset_next_stage;
		return IPR_RC_JOB_CONTINUE;
	}

	ipr_cmd->timer.expires = jiffies + (ioa_cfg->transop_timeout * HZ);
	ipr_cmd->timer.function = ipr_oper_timeout;
	ipr_cmd->done = ipr_reset_ioa_job;
	FUNC0(&ipr_cmd->timer);
	FUNC3(&ipr_cmd->queue, &ipr_cmd->hrrq->hrrq_pending_q);

	LEAVE;
	return IPR_RC_JOB_RETURN;
}