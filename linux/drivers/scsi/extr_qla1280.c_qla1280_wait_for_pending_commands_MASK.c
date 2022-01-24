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
struct srb {struct scsi_cmnd* cmd; } ;
struct scsi_qla_host {struct srb** outstanding_cmds; } ;
struct scsi_cmnd {int dummy; } ;

/* Variables and functions */
 int FAILED ; 
 int MAX_OUTSTANDING_COMMANDS ; 
 int FUNC0 (struct scsi_cmnd*) ; 
 int FUNC1 (struct scsi_cmnd*) ; 
 int SUCCESS ; 
 int FUNC2 (struct scsi_qla_host*,struct srb*) ; 

__attribute__((used)) static int
FUNC3(struct scsi_qla_host *ha, int bus, int target)
{
	int		cnt;
	int		status;
	struct srb	*sp;
	struct scsi_cmnd *cmd;

	status = SUCCESS;

	/*
	 * Wait for all commands with the designated bus/target
	 * to be completed by the firmware
	 */
	for (cnt = 0; cnt < MAX_OUTSTANDING_COMMANDS; cnt++) {
		sp = ha->outstanding_cmds[cnt];
		if (sp) {
			cmd = sp->cmd;

			if (bus >= 0 && FUNC0(cmd) != bus)
				continue;
			if (target >= 0 && FUNC1(cmd) != target)
				continue;

			status = FUNC2(ha, sp);
			if (status == FAILED)
				break;
		}
	}
	return status;
}