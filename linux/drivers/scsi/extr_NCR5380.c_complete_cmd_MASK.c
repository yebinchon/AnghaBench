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
struct scsi_cmnd {int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;int /*<<< orphan*/  result; } ;
struct Scsi_Host {int dummy; } ;
struct NCR5380_hostdata {struct scsi_cmnd* sensing; int /*<<< orphan*/  ses; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_SENSE ; 
 scalar_t__ GOOD ; 
 int /*<<< orphan*/  NDEBUG_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct Scsi_Host*,char*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_cmnd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 struct NCR5380_hostdata* FUNC3 (struct Scsi_Host*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_cmnd*) ; 

__attribute__((used)) static void FUNC6(struct Scsi_Host *instance,
                         struct scsi_cmnd *cmd)
{
	struct NCR5380_hostdata *hostdata = FUNC3(instance);

	FUNC0(NDEBUG_QUEUES, instance, "complete_cmd: cmd %p\n", cmd);

	if (hostdata->sensing == cmd) {
		/* Autosense processing ends here */
		if (FUNC4(cmd->result) != GOOD) {
			FUNC1(cmd, &hostdata->ses);
		} else {
			FUNC1(cmd, &hostdata->ses);
			FUNC2(cmd, DRIVER_SENSE);
		}
		hostdata->sensing = NULL;
	}

	cmd->scsi_done(cmd);
}