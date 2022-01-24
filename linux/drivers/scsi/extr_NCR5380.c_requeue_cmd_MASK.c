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
struct scsi_cmnd {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct NCR5380_hostdata {int /*<<< orphan*/  unissued; struct scsi_cmnd* sensing; int /*<<< orphan*/  autosense; int /*<<< orphan*/  ses; } ;
struct NCR5380_cmd {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct NCR5380_cmd* FUNC1 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*,int /*<<< orphan*/ *) ; 
 struct NCR5380_hostdata* FUNC3 (struct Scsi_Host*) ; 

__attribute__((used)) static void FUNC4(struct Scsi_Host *instance, struct scsi_cmnd *cmd)
{
	struct NCR5380_hostdata *hostdata = FUNC3(instance);
	struct NCR5380_cmd *ncmd = FUNC1(cmd);

	if (hostdata->sensing == cmd) {
		FUNC2(cmd, &hostdata->ses);
		FUNC0(&ncmd->list, &hostdata->autosense);
		hostdata->sensing = NULL;
	} else
		FUNC0(&ncmd->list, &hostdata->unissued);
}