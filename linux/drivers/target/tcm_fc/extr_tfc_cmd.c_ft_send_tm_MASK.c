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
typedef  int /*<<< orphan*/  u8 ;
struct ft_cmd {int /*<<< orphan*/ * ft_sense_buffer; TYPE_1__* sess; int /*<<< orphan*/  se_cmd; int /*<<< orphan*/  req_frame; } ;
struct fcp_cmnd {int fc_tm_flags; int /*<<< orphan*/  fc_lun; } ;
struct TYPE_2__ {int /*<<< orphan*/  se_sess; } ;

/* Variables and functions */
 int /*<<< orphan*/  FCP_CMND_FIELDS_INVALID ; 
#define  FCP_TMF_ABT_TASK_SET 132 
#define  FCP_TMF_CLR_ACA 131 
#define  FCP_TMF_CLR_TASK_SET 130 
 int /*<<< orphan*/  FCP_TMF_FAILED ; 
#define  FCP_TMF_LUN_RESET 129 
#define  FCP_TMF_TGT_RESET 128 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TARGET_SCF_ACK_KREF ; 
 int /*<<< orphan*/  TMR_ABORT_TASK_SET ; 
 int /*<<< orphan*/  TMR_CLEAR_ACA ; 
 int /*<<< orphan*/  TMR_CLEAR_TASK_SET ; 
 int /*<<< orphan*/  TMR_LUN_RESET ; 
 int /*<<< orphan*/  TMR_TARGET_WARM_RESET ; 
 struct fcp_cmnd* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ft_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ft_cmd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ft_cmd *cmd)
{
	struct fcp_cmnd *fcp;
	int rc;
	u8 tm_func;

	fcp = FUNC0(cmd->req_frame, sizeof(*fcp));

	switch (fcp->fc_tm_flags) {
	case FCP_TMF_LUN_RESET:
		tm_func = TMR_LUN_RESET;
		break;
	case FCP_TMF_TGT_RESET:
		tm_func = TMR_TARGET_WARM_RESET;
		break;
	case FCP_TMF_CLR_TASK_SET:
		tm_func = TMR_CLEAR_TASK_SET;
		break;
	case FCP_TMF_ABT_TASK_SET:
		tm_func = TMR_ABORT_TASK_SET;
		break;
	case FCP_TMF_CLR_ACA:
		tm_func = TMR_CLEAR_ACA;
		break;
	default:
		/*
		 * FCP4r01 indicates having a combination of
		 * tm_flags set is invalid.
		 */
		FUNC2("invalid FCP tm_flags %x\n", fcp->fc_tm_flags);
		FUNC1(cmd, FCP_CMND_FIELDS_INVALID);
		return;
	}

	/* FIXME: Add referenced task tag for ABORT_TASK */
	rc = FUNC4(&cmd->se_cmd, cmd->sess->se_sess,
		&cmd->ft_sense_buffer[0], FUNC3(&fcp->fc_lun),
		cmd, tm_func, GFP_KERNEL, 0, TARGET_SCF_ACK_KREF);
	if (rc < 0)
		FUNC1(cmd, FCP_TMF_FAILED);
}