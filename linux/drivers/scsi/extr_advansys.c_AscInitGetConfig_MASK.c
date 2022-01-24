#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ err_code; scalar_t__ scsi_reset_wait; int /*<<< orphan*/  init_state; int /*<<< orphan*/  iop_base; } ;
struct TYPE_5__ {TYPE_2__ asc_dvc_var; } ;
struct asc_board {TYPE_1__ dvc_var; } ;
struct Scsi_Host {int dummy; } ;
typedef  TYPE_2__ ASC_DVC_VAR ;

/* Variables and functions */
 int ASC_IERR_BAD_SIGNATURE ; 
 int /*<<< orphan*/  ASC_INIT_STATE_BEG_GET_CFG ; 
 int /*<<< orphan*/  ASC_INIT_STATE_END_GET_CFG ; 
 scalar_t__ ASC_MAX_SCSI_RESET_WAIT ; 
#define  ASC_WARN_AUTO_CONFIG 132 
#define  ASC_WARN_CMD_QNG_CONFLICT 131 
#define  ASC_WARN_EEPROM_CHKSUM 130 
#define  ASC_WARN_IO_PORT_ROTATE 129 
#define  ASC_WARN_IRQ_MODIFIED 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 unsigned short FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct Scsi_Host*,char*,...) ; 
 struct asc_board* FUNC4 (struct Scsi_Host*) ; 

__attribute__((used)) static int FUNC5(struct Scsi_Host *shost)
{
	struct asc_board *board = FUNC4(shost);
	ASC_DVC_VAR *asc_dvc = &board->dvc_var.asc_dvc_var;
	unsigned short warn_code = 0;

	asc_dvc->init_state = ASC_INIT_STATE_BEG_GET_CFG;
	if (asc_dvc->err_code != 0)
		return asc_dvc->err_code;

	if (FUNC0(asc_dvc->iop_base)) {
		FUNC1(asc_dvc);
		warn_code = FUNC2(asc_dvc);
		asc_dvc->init_state |= ASC_INIT_STATE_END_GET_CFG;
		if (asc_dvc->scsi_reset_wait > ASC_MAX_SCSI_RESET_WAIT)
			asc_dvc->scsi_reset_wait = ASC_MAX_SCSI_RESET_WAIT;
	} else {
		asc_dvc->err_code = ASC_IERR_BAD_SIGNATURE;
	}

	switch (warn_code) {
	case 0:	/* No error */
		break;
	case ASC_WARN_IO_PORT_ROTATE:
		FUNC3(KERN_WARNING, shost, "I/O port address "
				"modified\n");
		break;
	case ASC_WARN_AUTO_CONFIG:
		FUNC3(KERN_WARNING, shost, "I/O port increment switch "
				"enabled\n");
		break;
	case ASC_WARN_EEPROM_CHKSUM:
		FUNC3(KERN_WARNING, shost, "EEPROM checksum error\n");
		break;
	case ASC_WARN_IRQ_MODIFIED:
		FUNC3(KERN_WARNING, shost, "IRQ modified\n");
		break;
	case ASC_WARN_CMD_QNG_CONFLICT:
		FUNC3(KERN_WARNING, shost, "tag queuing enabled w/o "
				"disconnects\n");
		break;
	default:
		FUNC3(KERN_WARNING, shost, "unknown warning: 0x%x\n",
				warn_code);
		break;
	}

	if (asc_dvc->err_code != 0)
		FUNC3(KERN_ERR, shost, "error 0x%x at init_state "
			"0x%x\n", asc_dvc->err_code, asc_dvc->init_state);

	return asc_dvc->err_code;
}